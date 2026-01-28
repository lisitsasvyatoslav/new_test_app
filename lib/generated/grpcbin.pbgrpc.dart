// This is a generated file - do not edit.
//
// Generated from grpcbin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'grpcbin.pb.dart' as $0;

export 'grpcbin.pb.dart';

@$pb.GrpcServiceName('grpcbin.GRPCBin')
class GRPCBinClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  GRPCBinClient(super.channel, {super.options, super.interceptors});

  /// Unary endpoint that replies a received DummyMessage
  $grpc.ResponseFuture<$0.DummyMessage> dummyUnary(
    $0.DummyMessage request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$dummyUnary, request, options: options);
  }

  // method descriptors

  static final _$dummyUnary =
      $grpc.ClientMethod<$0.DummyMessage, $0.DummyMessage>(
          '/grpcbin.GRPCBin/DummyUnary',
          ($0.DummyMessage value) => value.writeToBuffer(),
          $0.DummyMessage.fromBuffer);
}

@$pb.GrpcServiceName('grpcbin.GRPCBin')
abstract class GRPCBinServiceBase extends $grpc.Service {
  $core.String get $name => 'grpcbin.GRPCBin';

  GRPCBinServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DummyMessage, $0.DummyMessage>(
        'DummyUnary',
        dummyUnary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DummyMessage.fromBuffer(value),
        ($0.DummyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.DummyMessage> dummyUnary_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.DummyMessage> $request) async {
    return dummyUnary($call, await $request);
  }

  $async.Future<$0.DummyMessage> dummyUnary(
      $grpc.ServiceCall call, $0.DummyMessage request);
}
