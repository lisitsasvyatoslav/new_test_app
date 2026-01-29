import 'package:flutter/material.dart';

import 'generated/documents.pb.dart';
import 'generated/documents_api.pb.dart';
import 'services/documents_grpc_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Documents gRPC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DocumentsDemoPage(),
    );
  }
}

class DocumentsDemoPage extends StatefulWidget {
  const DocumentsDemoPage({super.key});

  @override
  State<DocumentsDemoPage> createState() => _DocumentsDemoPageState();
}

class _DocumentsDemoPageState extends State<DocumentsDemoPage> {
  final DocumentsGrpcService _service = DocumentsGrpcService();
  String _response = '';
  bool _isLoading = false;
  bool _isInitialized = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initGrpc();
  }

  Future<void> _initGrpc() async {
    try {
      await _service.init();
      setState(() => _isInitialized = true);
    } catch (e) {
      setState(() => _error = 'Ошибка инициализации: $e');
    }
  }

  Future<void> _listDocuments() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final res = await _service.listDocumentViews();
      setState(() {
        _response = _formatListResponse(res);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  String _formatListResponse(ListDocumentViewsResponse res) {
    if (res.documents.isEmpty) {
      return 'Документов: 0';
    }
    final buffer = StringBuffer('Документов: ${res.documents.length}\n\n');
    for (final d in res.documents) {
      buffer.writeln('id: ${d.id}, parent_id: ${d.parentId}');
      buffer.writeln('  description: ${d.description}');
      if (d.hasCreationTime()) {
        buffer.writeln('  creation_time: ${d.creationTime.toDateTime()}');
      }
      if (d.hasType()) buffer.writeln('  type: ${d.type.name}');
      if (d.hasStatus()) buffer.writeln('  status: ${d.status.name}');
      buffer.writeln('');
    }
    return buffer.toString();
  }

  @override
  void dispose() {
    _service.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Documents API - test-edox-grpc.finam.ru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      _isInitialized ? Icons.check_circle : Icons.pending,
                      color: _isInitialized ? Colors.green : Colors.orange,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _isInitialized
                          ? 'Подключено к test-edox-grpc.finam.ru:443 (TLS)'
                          : 'Подключение...',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _isInitialized && !_isLoading ? _listDocuments : null,
              icon: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.list),
              label: Text(_isLoading ? 'Загрузка...' : 'Список документов'),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16)),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ответ:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Card(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: _error != null
                        ? Text(
                            _error!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          )
                        : Text(
                            _response.isEmpty
                                ? 'Нажмите «Список документов» для запроса ListDocumentViews.'
                                : _response,
                            style: TextStyle(
                              fontFamily: 'monospace',
                              color: _response.isEmpty
                                  ? Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withAlpha(128)
                                  : null,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Сервис: grpc.edox.documents.DocumentsService',
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.onSurface.withAlpha(153),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
