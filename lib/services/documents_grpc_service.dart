import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart' as $ts;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart';

import '../generated/documents_api.pbgrpc.dart';
import '../generated/documents.pb.dart';

/// Перед использованием вызовите [init()]. После — [dispose()].
class DocumentsGrpcService {
  static const String _host = 'test-edox-grpc.finam.ru';
  static const int _port = 443;

  ClientChannel? _channel;
  DocumentsServiceClient? _client;
  String _token = '';

  Future<void> init() async {
    _token = (await rootBundle.loadString('token_assembled.txt')).trim();
    _channel = ClientChannel(
      _host,
      port: _port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );
    _client = DocumentsServiceClient(_channel!);
  }

  CallOptions get _callOptions => CallOptions(
        timeout: const Duration(seconds: 15),
        metadata: _token.isNotEmpty ? {'authorization': 'Bearer $_token'} : null,
      );

  /// Список документов (grpc.edox.documents.ListDocumentViewsRequest).
  /// Все параметры соответствуют полям API; deprecated-поля опциональны.
  Future<ListDocumentViewsResponse> listDocumentViews({
    String? userId,
    DateTime? from,
    DateTime? to,
    int type = 0,
    int parentId = 0,
    DocumentContent content = DocumentContent.ALL,
    List<int> documentIds = const [],
    int statusId = 0,
    int? authenticationId,
  }) async {
    if (_client == null) {
      throw StateError('DocumentsGrpcService not initialized. Call init() first.');
    }

    final request = ListDocumentViewsRequest()
      ..type = type
      ..parentId = parentId
      ..content = content
      ..documentIds.addAll(documentIds)
      ..statusId = statusId;
    if (userId != null && userId.isNotEmpty) request.userId = userId;
    if (from != null) request.from = $ts.Timestamp.fromDateTime(from);
    if (to != null) request.to = $ts.Timestamp.fromDateTime(to);
    if (authenticationId != null) {
      request.authenticationId = $fixnum.Int64(authenticationId);
    }

    try {
      return await _client!.listDocumentViews(
        request,
        options: _callOptions,
      );
    } on GrpcError catch (e) {
      // code 14 = UNAVAILABLE: сервис недоступен (часто из-за отсутствия auth или обрыва соединения)
      final msg = e.message ?? '(no message)';
      final details = e.details?.isNotEmpty == true ? ' | details: ${e.details}' : '';
      final codeName = e.code == StatusCode.unavailable
          ? ' (UNAVAILABLE — проверьте авторизацию/токен в метаданных или доступность метода на сервере)'
          : '';
      throw Exception('gRPC Error: ${e.code}$codeName - $msg$details');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  /// Создание документа (минимальный набор полей).
  Future<CreateDocumentResponse> createDocument({
    required String description,
    required Firm firm,
    String typeCode = '',
    String globalId = '',
    int? parentId,
    Map<String, String> fields = const {},
    List<FileContent> files = const [],
  }) async {
    if (_client == null) {
      throw StateError('DocumentsGrpcService not initialized. Call init() first.');
    }

    final request = CreateDocumentRequest()
      ..description = description
      ..firm = firm
      ..typeCode = typeCode
      ..globalId = globalId
      ..fields.addAll(fields)
      ..files.addAll(files);
    if (parentId != null) {
      request.parentId = UInt32Value(value: parentId);
    }

    try {
      return await _client!.createDocument(
        request,
        options: _callOptions,
      );
    } on GrpcError catch (e) {
      throw Exception('gRPC Error: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> dispose() async {
    await _channel?.shutdown();
    _channel = null;
    _client = null;
  }
}
