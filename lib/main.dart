import 'package:flutter/material.dart';
import 'services/grpc_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gRPC Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GrpcDemoPage(),
    );
  }
}

class GrpcDemoPage extends StatefulWidget {
  const GrpcDemoPage({super.key});

  @override
  State<GrpcDemoPage> createState() => _GrpcDemoPageState();
}

class _GrpcDemoPageState extends State<GrpcDemoPage> {
  final GrpcService _grpcService = GrpcService();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _numberController = TextEditingController(text: '42');

  String _response = '';
  bool _isLoading = false;
  bool _isInitialized = false;
  bool _boolValue = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initGrpc();
  }

  Future<void> _initGrpc() async {
    try {
      await _grpcService.init();
      setState(() {
        _isInitialized = true;
      });
    } catch (e) {
      setState(() {
        _error = 'Failed to initialize gRPC: $e';
      });
    }
  }

  Future<void> _sendMessage() async {
    if (_textController.text.isEmpty) return;

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await _grpcService.sendDummyMessage(
        text: _textController.text,
        number: int.tryParse(_numberController.text) ?? 0,
        flag: _boolValue,
      );
      
      setState(() {
        _response = '''
Received echo from server:

f_string: "${response.fString}"
f_int32: ${response.fInt32}
f_bool: ${response.fBool}
''';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _grpcService.dispose();
    _textController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('gRPC Demo - grpcb.in'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Connection status
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
                          ? 'Connected to grpcb.in:9001'
                          : 'Connecting...',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Text input
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Text message (f_string)',
                hintText: 'Hello, gRPC!',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.message),
              ),
            ),
            const SizedBox(height: 12),

            // Number input and bool toggle
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _numberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Number (f_int32)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.numbers),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Row(
                      children: [
                        const Text('f_bool:'),
                        Switch(
                          value: _boolValue,
                          onChanged: (v) => setState(() => _boolValue = v),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Send button
            ElevatedButton.icon(
              onPressed: _isInitialized && !_isLoading ? _sendMessage : null,
              icon: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.send),
              label: Text(_isLoading ? 'Sending...' : 'Send gRPC Request'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
            ),
            const SizedBox(height: 24),

            // Response section
            const Text(
              'Response:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
                                ? 'No response yet.\n\nThis demo uses grpcb.in DummyUnary endpoint.\nIt echoes back the message you send.'
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

            // Info section
            const SizedBox(height: 16),
            Text(
              'Service: GRPCBin.DummyUnary\nEndpoint: grpcb.in:9001 (insecure)',
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
