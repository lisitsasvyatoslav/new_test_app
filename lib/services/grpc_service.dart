import 'package:grpc/grpc.dart';
import '../generated/grpcbin.pbgrpc.dart';

class GrpcService {
  static const String _host = 'grpcb.in';
  static const int _port = 9000; // TLS port for grpcb.in (9001 is insecure)

  ClientChannel? _channel;
  GRPCBinClient? _client;

  /// Initialize the gRPC channel and client
  Future<void> init() async {
    _channel = ClientChannel(
      _host,
      port: _port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );
    _client = GRPCBinClient(_channel!);
  }

  /// Send a message and receive an echo response
  Future<DummyMessage> sendDummyMessage({
    required String text,
    int number = 0,
    bool flag = false,
  }) async {
    if (_client == null) {
      throw StateError('GrpcService not initialized. Call init() first.');
    }

    try {
      final request = DummyMessage()
        ..fString = text
        ..fInt32 = number
        ..fBool = flag;
      
      final response = await _client!.dummyUnary(
        request,
        options: CallOptions(timeout: const Duration(seconds: 10)),
      );
      return response;
    } on GrpcError catch (e) {
      throw Exception('gRPC Error: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  /// Close the channel when done
  Future<void> dispose() async {
    await _channel?.shutdown();
    _channel = null;
    _client = null;
  }
}
