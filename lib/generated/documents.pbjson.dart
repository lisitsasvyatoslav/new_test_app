// This is a generated file - do not edit.
//
// Generated from documents.proto.

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

@$core.Deprecated('Use documentTypeDescriptor instead')
const DocumentType$json = {
  '1': 'DocumentType',
  '2': [
    {'1': 'DOCUMENT_TYPE_UNKNOWN', '2': 0},
    {'1': 'IDENTITY_DOCUMENT', '2': 1},
  ],
  '3': {'3': true},
};

/// Descriptor for `DocumentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List documentTypeDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudFR5cGUSGQoVRE9DVU1FTlRfVFlQRV9VTktOT1dOEAASFQoRSURFTlRJVFlfRE'
    '9DVU1FTlQQARoCGAE=');

@$core.Deprecated('Use firmDescriptor instead')
const Firm$json = {
  '1': 'Firm',
  '2': [
    {'1': 'FIRM_UNKNOWN', '2': 0},
    {'1': 'FINAM', '2': 1},
    {'1': 'FINAM_MANAGEMENT', '2': 2},
    {'1': 'FINAM_BANK', '2': 4},
    {'1': 'FINAM_FOREX', '2': 14},
  ],
};

/// Descriptor for `Firm`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List firmDescriptor = $convert.base64Decode(
    'CgRGaXJtEhAKDEZJUk1fVU5LTk9XThAAEgkKBUZJTkFNEAESFAoQRklOQU1fTUFOQUdFTUVOVB'
    'ACEg4KCkZJTkFNX0JBTksQBBIPCgtGSU5BTV9GT1JFWBAO');

@$core.Deprecated('Use signTypeIdDescriptor instead')
const SignTypeId$json = {
  '1': 'SignTypeId',
  '2': [
    {'1': 'SIGN_TYPE_ID_UNKNOWN', '2': 0},
    {'1': 'ANALOG', '2': 1},
    {'1': 'ASP', '2': 2},
    {'1': 'ELECTRONIC', '2': 3},
  ],
};

/// Descriptor for `SignTypeId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List signTypeIdDescriptor = $convert.base64Decode(
    'CgpTaWduVHlwZUlkEhgKFFNJR05fVFlQRV9JRF9VTktOT1dOEAASCgoGQU5BTE9HEAESBwoDQV'
    'NQEAISDgoKRUxFQ1RST05JQxAD');

@$core.Deprecated('Use fileContentDescriptor instead')
const FileContent$json = {
  '1': 'FileContent',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
    {
      '1': 'file',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.proto.edox.documents.FileInfo',
      '10': 'file'
    },
  ],
};

/// Descriptor for `FileContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileContentDescriptor = $convert.base64Decode(
    'CgtGaWxlQ29udGVudBIYCgdjb250ZW50GAEgASgMUgdjb250ZW50EjIKBGZpbGUYAiABKAsyHi'
    '5wcm90by5lZG94LmRvY3VtZW50cy5GaWxlSW5mb1IEZmlsZQ==');

@$core.Deprecated('Use documentValueTypeDescriptor instead')
const DocumentValueType$json = {
  '1': 'DocumentValueType',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DocumentValueType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentValueTypeDescriptor = $convert.base64Decode(
    'ChFEb2N1bWVudFZhbHVlVHlwZRIOCgJpZBgBIAEoDVICaWQSEgoEY29kZRgCIAEoCVIEY29kZR'
    'ISCgRuYW1lGAMgASgJUgRuYW1l');

@$core.Deprecated('Use documentStatusDescriptor instead')
const DocumentStatus$json = {
  '1': 'DocumentStatus',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DocumentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentStatusDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudFN0YXR1cxIOCgJpZBgBIAEoDVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = {
  '1': 'FileInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode(
    'CghGaWxlSW5mbxIOCgJpZBgBIAEoDVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use productInfoDescriptor instead')
const ProductInfo$json = {
  '1': 'ProductInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ProductInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productInfoDescriptor = $convert.base64Decode(
    'CgtQcm9kdWN0SW5mbxIOCgJpZBgBIAEoDVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use documentViewDescriptor instead')
const DocumentView$json = {
  '1': 'DocumentView',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'parent_id', '3': 2, '4': 1, '5': 13, '10': 'parentId'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.proto.edox.documents.DocumentValueType',
      '10': 'type'
    },
    {
      '1': 'creation_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'creationTime'
    },
    {
      '1': 'file',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.proto.edox.documents.FileInfo',
      '10': 'file'
    },
    {
      '1': 'product',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.proto.edox.documents.ProductInfo',
      '10': 'product'
    },
    {
      '1': 'status',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.proto.edox.documents.DocumentStatus',
      '10': 'status'
    },
    {
      '1': 'sign_type_ids',
      '3': 9,
      '4': 3,
      '5': 14,
      '6': '.proto.edox.documents.SignTypeId',
      '10': 'signTypeIds'
    },
  ],
};

/// Descriptor for `DocumentView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentViewDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudFZpZXcSDgoCaWQYASABKA1SAmlkEhsKCXBhcmVudF9pZBgCIAEoDVIIcGFyZW'
    '50SWQSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEjsKBHR5cGUYBCABKAsyJy5w'
    'cm90by5lZG94LmRvY3VtZW50cy5Eb2N1bWVudFZhbHVlVHlwZVIEdHlwZRI/Cg1jcmVhdGlvbl'
    '90aW1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMY3JlYXRpb25UaW1lEjIK'
    'BGZpbGUYBiABKAsyHi5wcm90by5lZG94LmRvY3VtZW50cy5GaWxlSW5mb1IEZmlsZRI7Cgdwcm'
    '9kdWN0GAcgASgLMiEucHJvdG8uZWRveC5kb2N1bWVudHMuUHJvZHVjdEluZm9SB3Byb2R1Y3QS'
    'PAoGc3RhdHVzGAggASgLMiQucHJvdG8uZWRveC5kb2N1bWVudHMuRG9jdW1lbnRTdGF0dXNSBn'
    'N0YXR1cxJECg1zaWduX3R5cGVfaWRzGAkgAygOMiAucHJvdG8uZWRveC5kb2N1bWVudHMuU2ln'
    'blR5cGVJZFILc2lnblR5cGVJZHM=');
