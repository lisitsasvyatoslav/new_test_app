// This is a generated file - do not edit.
//
// Generated from documents_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DocumentContent extends $pb.ProtobufEnum {
  static const DocumentContent ALL =
      DocumentContent._(0, _omitEnumNames ? '' : 'ALL');
  static const DocumentContent CHILD_DOCS =
      DocumentContent._(1, _omitEnumNames ? '' : 'CHILD_DOCS');
  static const DocumentContent FILES =
      DocumentContent._(2, _omitEnumNames ? '' : 'FILES');
  static const DocumentContent PRODUCTS =
      DocumentContent._(4, _omitEnumNames ? '' : 'PRODUCTS');

  static const $core.List<DocumentContent> values = <DocumentContent>[
    ALL,
    CHILD_DOCS,
    FILES,
    PRODUCTS,
  ];

  static final $core.List<DocumentContent?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static DocumentContent? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DocumentContent._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
