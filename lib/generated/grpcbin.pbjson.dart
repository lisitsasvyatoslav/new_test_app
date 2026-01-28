// This is a generated file - do not edit.
//
// Generated from grpcbin.proto.

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

@$core.Deprecated('Use dummyMessageDescriptor instead')
const DummyMessage$json = {
  '1': 'DummyMessage',
  '2': [
    {'1': 'f_string', '3': 1, '4': 1, '5': 9, '10': 'fString'},
    {'1': 'f_strings', '3': 2, '4': 3, '5': 9, '10': 'fStrings'},
    {'1': 'f_int32', '3': 3, '4': 1, '5': 5, '10': 'fInt32'},
    {'1': 'f_int32s', '3': 4, '4': 3, '5': 5, '10': 'fInt32s'},
    {
      '1': 'f_enum',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.grpcbin.DummyMessage.Enum',
      '10': 'fEnum'
    },
    {
      '1': 'f_enums',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.grpcbin.DummyMessage.Enum',
      '10': 'fEnums'
    },
    {
      '1': 'f_sub',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.grpcbin.DummyMessage.Sub',
      '10': 'fSub'
    },
    {
      '1': 'f_subs',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.grpcbin.DummyMessage.Sub',
      '10': 'fSubs'
    },
    {'1': 'f_bool', '3': 9, '4': 1, '5': 8, '10': 'fBool'},
    {'1': 'f_bools', '3': 10, '4': 3, '5': 8, '10': 'fBools'},
    {'1': 'f_int64', '3': 11, '4': 1, '5': 3, '10': 'fInt64'},
    {'1': 'f_int64s', '3': 12, '4': 3, '5': 3, '10': 'fInt64s'},
    {'1': 'f_bytes', '3': 13, '4': 1, '5': 12, '10': 'fBytes'},
    {'1': 'f_bytess', '3': 14, '4': 3, '5': 12, '10': 'fBytess'},
    {'1': 'f_float', '3': 15, '4': 1, '5': 2, '10': 'fFloat'},
    {'1': 'f_floats', '3': 16, '4': 3, '5': 2, '10': 'fFloats'},
  ],
  '3': [DummyMessage_Sub$json],
  '4': [DummyMessage_Enum$json],
};

@$core.Deprecated('Use dummyMessageDescriptor instead')
const DummyMessage_Sub$json = {
  '1': 'Sub',
  '2': [
    {'1': 'f_string', '3': 1, '4': 1, '5': 9, '10': 'fString'},
  ],
};

@$core.Deprecated('Use dummyMessageDescriptor instead')
const DummyMessage_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'ENUM_0', '2': 0},
    {'1': 'ENUM_1', '2': 1},
    {'1': 'ENUM_2', '2': 2},
  ],
};

/// Descriptor for `DummyMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dummyMessageDescriptor = $convert.base64Decode(
    'CgxEdW1teU1lc3NhZ2USGQoIZl9zdHJpbmcYASABKAlSB2ZTdHJpbmcSGwoJZl9zdHJpbmdzGA'
    'IgAygJUghmU3RyaW5ncxIXCgdmX2ludDMyGAMgASgFUgZmSW50MzISGQoIZl9pbnQzMnMYBCAD'
    'KAVSB2ZJbnQzMnMSMQoGZl9lbnVtGAUgASgOMhouZ3JwY2Jpbi5EdW1teU1lc3NhZ2UuRW51bV'
    'IFZkVudW0SMwoHZl9lbnVtcxgGIAMoDjIaLmdycGNiaW4uRHVtbXlNZXNzYWdlLkVudW1SBmZF'
    'bnVtcxIuCgVmX3N1YhgHIAEoCzIZLmdycGNiaW4uRHVtbXlNZXNzYWdlLlN1YlIEZlN1YhIwCg'
    'ZmX3N1YnMYCCADKAsyGS5ncnBjYmluLkR1bW15TWVzc2FnZS5TdWJSBWZTdWJzEhUKBmZfYm9v'
    'bBgJIAEoCFIFZkJvb2wSFwoHZl9ib29scxgKIAMoCFIGZkJvb2xzEhcKB2ZfaW50NjQYCyABKA'
    'NSBmZJbnQ2NBIZCghmX2ludDY0cxgMIAMoA1IHZkludDY0cxIXCgdmX2J5dGVzGA0gASgMUgZm'
    'Qnl0ZXMSGQoIZl9ieXRlc3MYDiADKAxSB2ZCeXRlc3MSFwoHZl9mbG9hdBgPIAEoAlIGZkZsb2'
    'F0EhkKCGZfZmxvYXRzGBAgAygCUgdmRmxvYXRzGiAKA1N1YhIZCghmX3N0cmluZxgBIAEoCVIH'
    'ZlN0cmluZyIqCgRFbnVtEgoKBkVOVU1fMBAAEgoKBkVOVU1fMRABEgoKBkVOVU1fMhAC');
