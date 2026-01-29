# Генерация Dart/gRPC кода из documents.proto и documents_api.proto
# Требования: установленный protoc (https://github.com/protocolbuffers/protobuf/releases)
# и путь к папке include (где лежит google/protobuf/*.proto)

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $ProjectRoot

# 1) Путь к include с google/protobuf (timestamp.proto, wrappers.proto и т.д.)
$IncludePath = $env:PROTOC_INCLUDE
if (-not $IncludePath) {
    $protocExe = (Get-Command protoc -ErrorAction SilentlyContinue).Source
    if ($protocExe) {
        $protocDir = Split-Path (Split-Path $protocExe)  # родитель папки bin
        $candidate = Join-Path $protocDir "include"
        if (Test-Path (Join-Path $candidate "google\protobuf\timestamp.proto")) {
            $IncludePath = $candidate
        }
    }
}
if (-not $IncludePath -or -not (Test-Path (Join-Path $IncludePath "google\protobuf\timestamp.proto"))) {
    Write-Host "ERROR: Не найден путь к google/protobuf (timestamp.proto)." -ForegroundColor Red
    Write-Host "Установите protoc и задайте переменную окружения PROTOC_INCLUDE," -ForegroundColor Yellow
    Write-Host "указывающую на папку include (в ней должна быть подпапка google/protobuf)." -ForegroundColor Yellow
    Write-Host "Пример: `$env:PROTOC_INCLUDE = 'C:\protoc-27.0\include'" -ForegroundColor Cyan
    exit 1
}

# 2) Плагин protoc-gen-dart (один раз выполните: dart pub global activate protoc_plugin)
dart pub get | Out-Null
$pubBin = "$env:LOCALAPPDATA\Pub\Cache\bin"
if (-not (Test-Path "$pubBin\protoc-gen-dart.bat")) {
    $pubBin = "$env:APPDATA\Pub\Cache\bin"
}
if (-not (Test-Path "$pubBin\protoc-gen-dart.bat")) {
    Write-Host "ERROR: protoc-gen-dart не найден. Выполните: dart pub global activate protoc_plugin" -ForegroundColor Red
    exit 1
}
$env:PATH = "$pubBin;$env:PATH"

# 3) Генерация
$ProtosDir = "lib\protos"
$OutDir = "lib\generated"
$ProtoFiles = @(
    "lib\protos\documents.proto",
    "lib\protos\documents_api.proto"
)

Write-Host "Generating Dart/gRPC from documents*.proto -> $OutDir" -ForegroundColor Green
Write-Host "PROTOC_INCLUDE = $IncludePath"

& protoc `
    --proto_path="$ProtosDir" `
    --proto_path="$IncludePath" `
    --dart_out="grpc:$OutDir" `
    $ProtoFiles

if ($LASTEXITCODE -ne 0) {
    Write-Host "protoc failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Done. Check lib/generated for documents*.pb.dart and documents_api.pbgrpc.dart" -ForegroundColor Green
