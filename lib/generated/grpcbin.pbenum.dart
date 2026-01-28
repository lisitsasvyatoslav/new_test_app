// This is a generated file - do not edit.
//
// Generated from grpcbin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DummyMessage_Enum extends $pb.ProtobufEnum {
  static const DummyMessage_Enum ENUM_0 =
      DummyMessage_Enum._(0, _omitEnumNames ? '' : 'ENUM_0');
  static const DummyMessage_Enum ENUM_1 =
      DummyMessage_Enum._(1, _omitEnumNames ? '' : 'ENUM_1');
  static const DummyMessage_Enum ENUM_2 =
      DummyMessage_Enum._(2, _omitEnumNames ? '' : 'ENUM_2');

  static const $core.List<DummyMessage_Enum> values = <DummyMessage_Enum>[
    ENUM_0,
    ENUM_1,
    ENUM_2,
  ];

  static final $core.List<DummyMessage_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DummyMessage_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DummyMessage_Enum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
