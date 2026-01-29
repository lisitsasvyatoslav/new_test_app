// This is a generated file - do not edit.
//
// Generated from documents_api.proto.

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

import 'documents_api.pb.dart' as $0;

export 'documents_api.pb.dart';

/// Сервис для работы с документами
@$pb.GrpcServiceName('grpc.edox.documents.DocumentsService')
class DocumentsServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  DocumentsServiceClient(super.channel, {super.options, super.interceptors});

  /// Создать новый документ
  $grpc.ResponseFuture<$0.CreateDocumentResponse> createDocument(
    $0.CreateDocumentRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createDocument, request, options: options);
  }

  /// Получить список документов
  $grpc.ResponseFuture<$0.ListDocumentViewsResponse> listDocumentViews(
    $0.ListDocumentViewsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listDocumentViews, request, options: options);
  }

  // method descriptors

  static final _$createDocument =
      $grpc.ClientMethod<$0.CreateDocumentRequest, $0.CreateDocumentResponse>(
          '/grpc.edox.documents.DocumentsService/CreateDocument',
          ($0.CreateDocumentRequest value) => value.writeToBuffer(),
          $0.CreateDocumentResponse.fromBuffer);
  static final _$listDocumentViews = $grpc.ClientMethod<
          $0.ListDocumentViewsRequest, $0.ListDocumentViewsResponse>(
      '/grpc.edox.documents.DocumentsService/ListDocumentViews',
      ($0.ListDocumentViewsRequest value) => value.writeToBuffer(),
      $0.ListDocumentViewsResponse.fromBuffer);
}

@$pb.GrpcServiceName('grpc.edox.documents.DocumentsService')
abstract class DocumentsServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.edox.documents.DocumentsService';

  DocumentsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateDocumentRequest,
            $0.CreateDocumentResponse>(
        'CreateDocument',
        createDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateDocumentRequest.fromBuffer(value),
        ($0.CreateDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListDocumentViewsRequest,
            $0.ListDocumentViewsResponse>(
        'ListDocumentViews',
        listDocumentViews_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListDocumentViewsRequest.fromBuffer(value),
        ($0.ListDocumentViewsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateDocumentResponse> createDocument_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateDocumentRequest> $request) async {
    return createDocument($call, await $request);
  }

  $async.Future<$0.CreateDocumentResponse> createDocument(
      $grpc.ServiceCall call, $0.CreateDocumentRequest request);

  $async.Future<$0.ListDocumentViewsResponse> listDocumentViews_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ListDocumentViewsRequest> $request) async {
    return listDocumentViews($call, await $request);
  }

  $async.Future<$0.ListDocumentViewsResponse> listDocumentViews(
      $grpc.ServiceCall call, $0.ListDocumentViewsRequest request);
}
