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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'grpcbin.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'grpcbin.pbenum.dart';

class DummyMessage_Sub extends $pb.GeneratedMessage {
  factory DummyMessage_Sub({
    $core.String? fString,
  }) {
    final result = create();
    if (fString != null) result.fString = fString;
    return result;
  }

  DummyMessage_Sub._();

  factory DummyMessage_Sub.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DummyMessage_Sub.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DummyMessage.Sub',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'grpcbin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fString')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DummyMessage_Sub clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DummyMessage_Sub copyWith(void Function(DummyMessage_Sub) updates) =>
      super.copyWith((message) => updates(message as DummyMessage_Sub))
          as DummyMessage_Sub;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DummyMessage_Sub create() => DummyMessage_Sub._();
  @$core.override
  DummyMessage_Sub createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DummyMessage_Sub getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DummyMessage_Sub>(create);
  static DummyMessage_Sub? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fString => $_getSZ(0);
  @$pb.TagNumber(1)
  set fString($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFString() => $_clearField(1);
}

class DummyMessage extends $pb.GeneratedMessage {
  factory DummyMessage({
    $core.String? fString,
    $core.Iterable<$core.String>? fStrings,
    $core.int? fInt32,
    $core.Iterable<$core.int>? fInt32s,
    DummyMessage_Enum? fEnum,
    $core.Iterable<DummyMessage_Enum>? fEnums,
    DummyMessage_Sub? fSub,
    $core.Iterable<DummyMessage_Sub>? fSubs,
    $core.bool? fBool,
    $core.Iterable<$core.bool>? fBools,
    $fixnum.Int64? fInt64,
    $core.Iterable<$fixnum.Int64>? fInt64s,
    $core.List<$core.int>? fBytes,
    $core.Iterable<$core.List<$core.int>>? fBytess,
    $core.double? fFloat,
    $core.Iterable<$core.double>? fFloats,
  }) {
    final result = create();
    if (fString != null) result.fString = fString;
    if (fStrings != null) result.fStrings.addAll(fStrings);
    if (fInt32 != null) result.fInt32 = fInt32;
    if (fInt32s != null) result.fInt32s.addAll(fInt32s);
    if (fEnum != null) result.fEnum = fEnum;
    if (fEnums != null) result.fEnums.addAll(fEnums);
    if (fSub != null) result.fSub = fSub;
    if (fSubs != null) result.fSubs.addAll(fSubs);
    if (fBool != null) result.fBool = fBool;
    if (fBools != null) result.fBools.addAll(fBools);
    if (fInt64 != null) result.fInt64 = fInt64;
    if (fInt64s != null) result.fInt64s.addAll(fInt64s);
    if (fBytes != null) result.fBytes = fBytes;
    if (fBytess != null) result.fBytess.addAll(fBytess);
    if (fFloat != null) result.fFloat = fFloat;
    if (fFloats != null) result.fFloats.addAll(fFloats);
    return result;
  }

  DummyMessage._();

  factory DummyMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DummyMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DummyMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'grpcbin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fString')
    ..pPS(2, _omitFieldNames ? '' : 'fStrings')
    ..aI(3, _omitFieldNames ? '' : 'fInt32')
    ..p<$core.int>(4, _omitFieldNames ? '' : 'fInt32s', $pb.PbFieldType.K3)
    ..aE<DummyMessage_Enum>(5, _omitFieldNames ? '' : 'fEnum',
        enumValues: DummyMessage_Enum.values)
    ..pc<DummyMessage_Enum>(
        6, _omitFieldNames ? '' : 'fEnums', $pb.PbFieldType.KE,
        valueOf: DummyMessage_Enum.valueOf,
        enumValues: DummyMessage_Enum.values,
        defaultEnumValue: DummyMessage_Enum.ENUM_0)
    ..aOM<DummyMessage_Sub>(7, _omitFieldNames ? '' : 'fSub',
        subBuilder: DummyMessage_Sub.create)
    ..pPM<DummyMessage_Sub>(8, _omitFieldNames ? '' : 'fSubs',
        subBuilder: DummyMessage_Sub.create)
    ..aOB(9, _omitFieldNames ? '' : 'fBool')
    ..p<$core.bool>(10, _omitFieldNames ? '' : 'fBools', $pb.PbFieldType.KB)
    ..aInt64(11, _omitFieldNames ? '' : 'fInt64')
    ..p<$fixnum.Int64>(12, _omitFieldNames ? '' : 'fInt64s', $pb.PbFieldType.K6)
    ..a<$core.List<$core.int>>(
        13, _omitFieldNames ? '' : 'fBytes', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        14, _omitFieldNames ? '' : 'fBytess', $pb.PbFieldType.PY)
    ..aD(15, _omitFieldNames ? '' : 'fFloat', fieldType: $pb.PbFieldType.OF)
    ..p<$core.double>(16, _omitFieldNames ? '' : 'fFloats', $pb.PbFieldType.KF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DummyMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DummyMessage copyWith(void Function(DummyMessage) updates) =>
      super.copyWith((message) => updates(message as DummyMessage))
          as DummyMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DummyMessage create() => DummyMessage._();
  @$core.override
  DummyMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DummyMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DummyMessage>(create);
  static DummyMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fString => $_getSZ(0);
  @$pb.TagNumber(1)
  set fString($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFString() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get fStrings => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get fInt32 => $_getIZ(2);
  @$pb.TagNumber(3)
  set fInt32($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFInt32() => $_has(2);
  @$pb.TagNumber(3)
  void clearFInt32() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get fInt32s => $_getList(3);

  @$pb.TagNumber(5)
  DummyMessage_Enum get fEnum => $_getN(4);
  @$pb.TagNumber(5)
  set fEnum(DummyMessage_Enum value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFEnum() => $_has(4);
  @$pb.TagNumber(5)
  void clearFEnum() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<DummyMessage_Enum> get fEnums => $_getList(5);

  @$pb.TagNumber(7)
  DummyMessage_Sub get fSub => $_getN(6);
  @$pb.TagNumber(7)
  set fSub(DummyMessage_Sub value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFSub() => $_has(6);
  @$pb.TagNumber(7)
  void clearFSub() => $_clearField(7);
  @$pb.TagNumber(7)
  DummyMessage_Sub ensureFSub() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbList<DummyMessage_Sub> get fSubs => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get fBool => $_getBF(8);
  @$pb.TagNumber(9)
  set fBool($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFBool() => $_has(8);
  @$pb.TagNumber(9)
  void clearFBool() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.bool> get fBools => $_getList(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get fInt64 => $_getI64(10);
  @$pb.TagNumber(11)
  set fInt64($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFInt64() => $_has(10);
  @$pb.TagNumber(11)
  void clearFInt64() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$fixnum.Int64> get fInt64s => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get fBytes => $_getN(12);
  @$pb.TagNumber(13)
  set fBytes($core.List<$core.int> value) => $_setBytes(12, value);
  @$pb.TagNumber(13)
  $core.bool hasFBytes() => $_has(12);
  @$pb.TagNumber(13)
  void clearFBytes() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$core.List<$core.int>> get fBytess => $_getList(13);

  @$pb.TagNumber(15)
  $core.double get fFloat => $_getN(14);
  @$pb.TagNumber(15)
  set fFloat($core.double value) => $_setFloat(14, value);
  @$pb.TagNumber(15)
  $core.bool hasFFloat() => $_has(14);
  @$pb.TagNumber(15)
  void clearFFloat() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<$core.double> get fFloats => $_getList(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
