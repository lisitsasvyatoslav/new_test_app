# new_test_app

Flutter-приложение с gRPC: демо Documents API (test-edox-grpc.finam.ru).

## Генерация кода из proto (Documents API)

Перед сборкой нужно сгенерировать Dart-код из `lib/protos/documents.proto` и `lib/protos/documents_api.proto`:

1. **Установите protoc**  
   Скачайте [Protocol Buffers compiler](https://github.com/protocolbuffers/protobuf/releases) (Windows: `protoc-*-win64.zip`), распакуйте в любую папку (например, `C:\tools\protoc` или `%USERPROFILE%\protoc`). В распакованном архиве должны быть: `bin/protoc.exe` и папка `include` с `google/protobuf/*.proto`. Добавьте в `PATH` папку, где лежит `protoc.exe` — обычно это подпапка `bin` (например, `C:\tools\protoc\bin` или `%USERPROFILE%\protoc\bin`).

2. **Установите плагин Dart** (один раз):
   ```bash
   dart pub global activate protoc_plugin
   ```
   Убедитесь, что в `PATH` есть папка с `protoc-gen-dart.bat` (обычно `%LOCALAPPDATA%\Pub\Cache\bin` или `%APPDATA%\Pub\Cache\bin`).

3. **Путь к include** — нужен только если при запуске скрипта (шаг 4) появится ошибка «Не найден путь к google/protobuf». Тогда в PowerShell (в той же сессии, где будете запускать скрипт) выполните:
   ```powershell
   $env:PROTOC_INCLUDE = 'C:\tools\protoc\include'
   ```
   Подставьте свой путь: это папка **include** внутри распакованного protoc (например, если распаковали в `C:\tools\protoc`, то путь — `C:\tools\protoc\include`).

4. **Запустите генерацию** из корня проекта:
   - Откройте **PowerShell** (или терминал в VS Code / Cursor: Terminal → New Terminal).
   - Перейдите в корень проекта — ту папку, где лежат `pubspec.yaml`, папки `lib`, `android`, `scripts`:
     ```powershell
     cd C:\Users\Finam\repo\new_test_app
     ```
     (подставьте свой путь к проекту, если он другой).
   - Выполните скрипт:
     ```powershell
     .\scripts\generate_documents_protos.ps1
     ```
   - В консоли должны появиться зелёные строки с путём `PROTOC_INCLUDE` и сообщением «Done. Check lib/generated...». Если появится ошибка про `google/protobuf` или `protoc-gen-dart` — вернитесь к шагам 1–3.
   - В папке `lib/generated/` появятся (или обновятся) файлы: `documents.pb.dart`, `documents_api.pb.dart`, `documents_api.pbgrpc.dart` и т.д.

После этого: `flutter pub get` и `flutter run`.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
