// This is a generated file - do not edit.
//
// Generated from documents_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentContentDescriptor instead')
const DocumentContent$json = {
  '1': 'DocumentContent',
  '2': [
    {'1': 'ALL', '2': 0},
    {'1': 'CHILD_DOCS', '2': 1},
    {'1': 'FILES', '2': 2},
    {'1': 'PRODUCTS', '2': 4},
  ],
};

/// Descriptor for `DocumentContent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List documentContentDescriptor = $convert.base64Decode(
    'Cg9Eb2N1bWVudENvbnRlbnQSBwoDQUxMEAASDgoKQ0hJTERfRE9DUxABEgkKBUZJTEVTEAISDA'
    'oIUFJPRFVDVFMQBA==');

@$core.Deprecated('Use createDocumentRequestDescriptor instead')
const CreateDocumentRequest$json = {
  '1': 'CreateDocumentRequest',
  '2': [
    {
      '1': 'login',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'login',
    },
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.proto.edox.documents.DocumentType',
      '8': {'3': true},
      '10': 'type',
    },
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'files',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.edox.documents.FileContent',
      '10': 'files'
    },
    {
      '1': 'fields',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.grpc.edox.documents.CreateDocumentRequest.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'authentication_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'authenticationId',
    },
    {
      '1': 'firm',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.proto.edox.documents.Firm',
      '10': 'firm'
    },
    {
      '1': 'parent_id',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.UInt32Value',
      '10': 'parentId'
    },
    {'1': 'global_id', '3': 9, '4': 1, '5': 9, '10': 'globalId'},
    {
      '1': 'type_id',
      '3': 10,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'typeId',
    },
    {'1': 'type_code', '3': 11, '4': 1, '5': 9, '10': 'typeCode'},
  ],
  '3': [CreateDocumentRequest_FieldsEntry$json],
};

@$core.Deprecated('Use createDocumentRequestDescriptor instead')
const CreateDocumentRequest_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDocumentRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVEb2N1bWVudFJlcXVlc3QSGAoFbG9naW4YASABKAlCAhgBUgVsb2dpbhI6CgR0eX'
    'BlGAIgASgOMiIucHJvdG8uZWRveC5kb2N1bWVudHMuRG9jdW1lbnRUeXBlQgIYAVIEdHlwZRIg'
    'CgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SNwoFZmlsZXMYBCADKAsyIS5wcm90by'
    '5lZG94LmRvY3VtZW50cy5GaWxlQ29udGVudFIFZmlsZXMSTgoGZmllbGRzGAUgAygLMjYuZ3Jw'
    'Yy5lZG94LmRvY3VtZW50cy5DcmVhdGVEb2N1bWVudFJlcXVlc3QuRmllbGRzRW50cnlSBmZpZW'
    'xkcxIvChFhdXRoZW50aWNhdGlvbl9pZBgGIAEoA0ICGAFSEGF1dGhlbnRpY2F0aW9uSWQSLgoE'
    'ZmlybRgHIAEoDjIaLnByb3RvLmVkb3guZG9jdW1lbnRzLkZpcm1SBGZpcm0SOQoJcGFyZW50X2'
    'lkGAggASgLMhwuZ29vZ2xlLnByb3RvYnVmLlVJbnQzMlZhbHVlUghwYXJlbnRJZBIbCglnbG9i'
    'YWxfaWQYCSABKAlSCGdsb2JhbElkEhsKB3R5cGVfaWQYCiABKAVCAhgBUgZ0eXBlSWQSGwoJdH'
    'lwZV9jb2RlGAsgASgJUgh0eXBlQ29kZRo5CgtGaWVsZHNFbnRyeRIQCgNrZXkYASABKAlSA2tl'
    'eRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use createDocumentResponseDescriptor instead')
const CreateDocumentResponse$json = {
  '1': 'CreateDocumentResponse',
  '2': [
    {'1': 'document_id', '3': 1, '4': 1, '5': 13, '10': 'documentId'},
  ],
};

/// Descriptor for `CreateDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDocumentResponseDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVEb2N1bWVudFJlc3BvbnNlEh8KC2RvY3VtZW50X2lkGAEgASgNUgpkb2N1bWVudE'
        'lk');

@$core.Deprecated('Use listDocumentViewsRequestDescriptor instead')
const ListDocumentViewsRequest$json = {
  '1': 'ListDocumentViewsRequest',
  '2': [
    {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'userId',
    },
    {
      '1': 'from',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'from'
    },
    {
      '1': 'to',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'to'
    },
    {'1': 'type', '3': 4, '4': 1, '5': 13, '10': 'type'},
    {'1': 'parent_id', '3': 5, '4': 1, '5': 13, '10': 'parentId'},
    {
      '1': 'content',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.grpc.edox.documents.DocumentContent',
      '10': 'content'
    },
    {'1': 'document_ids', '3': 7, '4': 3, '5': 13, '10': 'documentIds'},
    {'1': 'status_id', '3': 8, '4': 1, '5': 13, '10': 'statusId'},
    {
      '1': 'authentication_id',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'authenticationId',
    },
  ],
};

/// Descriptor for `ListDocumentViewsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentViewsRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0RG9jdW1lbnRWaWV3c1JlcXVlc3QSGwoHdXNlcl9pZBgBIAEoCUICGAFSBnVzZXJJZB'
    'IuCgRmcm9tGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEZnJvbRIqCgJ0bxgD'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSAnRvEhIKBHR5cGUYBCABKA1SBHR5cG'
    'USGwoJcGFyZW50X2lkGAUgASgNUghwYXJlbnRJZBI+Cgdjb250ZW50GAYgASgOMiQuZ3JwYy5l'
    'ZG94LmRvY3VtZW50cy5Eb2N1bWVudENvbnRlbnRSB2NvbnRlbnQSIQoMZG9jdW1lbnRfaWRzGA'
    'cgAygNUgtkb2N1bWVudElkcxIbCglzdGF0dXNfaWQYCCABKA1SCHN0YXR1c0lkEi8KEWF1dGhl'
    'bnRpY2F0aW9uX2lkGAkgASgDQgIYAVIQYXV0aGVudGljYXRpb25JZA==');

@$core.Deprecated('Use listDocumentViewsResponseDescriptor instead')
const ListDocumentViewsResponse$json = {
  '1': 'ListDocumentViewsResponse',
  '2': [
    {
      '1': 'documents',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.edox.documents.DocumentView',
      '10': 'documents'
    },
  ],
};

/// Descriptor for `ListDocumentViewsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentViewsResponseDescriptor =
    $convert.base64Decode(
        'ChlMaXN0RG9jdW1lbnRWaWV3c1Jlc3BvbnNlEkAKCWRvY3VtZW50cxgBIAMoCzIiLnByb3RvLm'
        'Vkb3guZG9jdW1lbnRzLkRvY3VtZW50Vmlld1IJZG9jdW1lbnRz');
