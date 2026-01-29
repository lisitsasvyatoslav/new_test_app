// This is a generated file - do not edit.
//
// Generated from documents.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

@$core.Deprecated('This enum is deprecated')
class DocumentType extends $pb.ProtobufEnum {
  static const DocumentType DOCUMENT_TYPE_UNKNOWN =
      DocumentType._(0, _omitEnumNames ? '' : 'DOCUMENT_TYPE_UNKNOWN');
  static const DocumentType IDENTITY_DOCUMENT =
      DocumentType._(1, _omitEnumNames ? '' : 'IDENTITY_DOCUMENT');

  static const $core.List<DocumentType> values = <DocumentType>[
    DOCUMENT_TYPE_UNKNOWN,
    IDENTITY_DOCUMENT,
  ];

  static final $core.List<DocumentType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static DocumentType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DocumentType._(super.value, super.name);
}

class Firm extends $pb.ProtobufEnum {
  static const Firm FIRM_UNKNOWN =
      Firm._(0, _omitEnumNames ? '' : 'FIRM_UNKNOWN');
  static const Firm FINAM = Firm._(1, _omitEnumNames ? '' : 'FINAM');
  static const Firm FINAM_MANAGEMENT =
      Firm._(2, _omitEnumNames ? '' : 'FINAM_MANAGEMENT');
  static const Firm FINAM_BANK = Firm._(4, _omitEnumNames ? '' : 'FINAM_BANK');
  static const Firm FINAM_FOREX =
      Firm._(14, _omitEnumNames ? '' : 'FINAM_FOREX');

  static const $core.List<Firm> values = <Firm>[
    FIRM_UNKNOWN,
    FINAM,
    FINAM_MANAGEMENT,
    FINAM_BANK,
    FINAM_FOREX,
  ];

  static final $core.Map<$core.int, Firm> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Firm? valueOf($core.int value) => _byValue[value];

  const Firm._(super.value, super.name);
}

class SignTypeId extends $pb.ProtobufEnum {
  static const SignTypeId SIGN_TYPE_ID_UNKNOWN =
      SignTypeId._(0, _omitEnumNames ? '' : 'SIGN_TYPE_ID_UNKNOWN');
  static const SignTypeId ANALOG =
      SignTypeId._(1, _omitEnumNames ? '' : 'ANALOG');
  static const SignTypeId ASP = SignTypeId._(2, _omitEnumNames ? '' : 'ASP');
  static const SignTypeId ELECTRONIC =
      SignTypeId._(3, _omitEnumNames ? '' : 'ELECTRONIC');

  static const $core.List<SignTypeId> values = <SignTypeId>[
    SIGN_TYPE_ID_UNKNOWN,
    ANALOG,
    ASP,
    ELECTRONIC,
  ];

  static final $core.List<SignTypeId?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SignTypeId? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SignTypeId._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
