import 'package:grpc/grpc.dart';
import 'generated/srv.pbgrpc.dart';

class GrpcClient {
  static final GrpcClient _instance = GrpcClient._internal();
  late ClientChannel _channel;
  late TextSrvClient stub;

  factory GrpcClient() => _instance;

  GrpcClient._internal() {
    _channel = ClientChannel(
      'localhost',
      port: 8080,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = TextSrvClient(_channel);
  }
}