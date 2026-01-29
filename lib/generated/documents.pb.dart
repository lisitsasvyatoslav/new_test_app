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
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import 'documents.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'documents.pbenum.dart';

class FileContent extends $pb.GeneratedMessage {
  factory FileContent({
    $core.List<$core.int>? content,
    FileInfo? file,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (file != null) result.file = file;
    return result;
  }

  FileContent._();

  factory FileContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileContent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aOM<FileInfo>(2, _omitFieldNames ? '' : 'file',
        subBuilder: FileInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileContent copyWith(void Function(FileContent) updates) =>
      super.copyWith((message) => updates(message as FileContent))
          as FileContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileContent create() => FileContent._();
  @$core.override
  FileContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileContent>(create);
  static FileContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  FileInfo get file => $_getN(1);
  @$pb.TagNumber(2)
  set file(FileInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => $_clearField(2);
  @$pb.TagNumber(2)
  FileInfo ensureFile() => $_ensure(1);
}

class DocumentValueType extends $pb.GeneratedMessage {
  factory DocumentValueType({
    $core.int? id,
    $core.String? code,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (code != null) result.code = code;
    if (name != null) result.name = name;
    return result;
  }

  DocumentValueType._();

  factory DocumentValueType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DocumentValueType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentValueType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentValueType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentValueType copyWith(void Function(DocumentValueType) updates) =>
      super.copyWith((message) => updates(message as DocumentValueType))
          as DocumentValueType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentValueType create() => DocumentValueType._();
  @$core.override
  DocumentValueType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DocumentValueType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentValueType>(create);
  static DocumentValueType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
}

class DocumentStatus extends $pb.GeneratedMessage {
  factory DocumentStatus({
    $core.int? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  DocumentStatus._();

  factory DocumentStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DocumentStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentStatus copyWith(void Function(DocumentStatus) updates) =>
      super.copyWith((message) => updates(message as DocumentStatus))
          as DocumentStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentStatus create() => DocumentStatus._();
  @$core.override
  DocumentStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DocumentStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentStatus>(create);
  static DocumentStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class FileInfo extends $pb.GeneratedMessage {
  factory FileInfo({
    $core.int? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  FileInfo._();

  factory FileInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo copyWith(void Function(FileInfo) updates) =>
      super.copyWith((message) => updates(message as FileInfo)) as FileInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  @$core.override
  FileInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class ProductInfo extends $pb.GeneratedMessage {
  factory ProductInfo({
    $core.int? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  ProductInfo._();

  factory ProductInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProductInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProductInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProductInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProductInfo copyWith(void Function(ProductInfo) updates) =>
      super.copyWith((message) => updates(message as ProductInfo))
          as ProductInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductInfo create() => ProductInfo._();
  @$core.override
  ProductInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProductInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProductInfo>(create);
  static ProductInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class DocumentView extends $pb.GeneratedMessage {
  factory DocumentView({
    $core.int? id,
    $core.int? parentId,
    $core.String? description,
    DocumentValueType? type,
    $0.Timestamp? creationTime,
    FileInfo? file,
    ProductInfo? product,
    DocumentStatus? status,
    $core.Iterable<SignTypeId>? signTypeIds,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (parentId != null) result.parentId = parentId;
    if (description != null) result.description = description;
    if (type != null) result.type = type;
    if (creationTime != null) result.creationTime = creationTime;
    if (file != null) result.file = file;
    if (product != null) result.product = product;
    if (status != null) result.status = status;
    if (signTypeIds != null) result.signTypeIds.addAll(signTypeIds);
    return result;
  }

  DocumentView._();

  factory DocumentView.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DocumentView.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentView',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'proto.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'parentId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<DocumentValueType>(4, _omitFieldNames ? '' : 'type',
        subBuilder: DocumentValueType.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'creationTime',
        subBuilder: $0.Timestamp.create)
    ..aOM<FileInfo>(6, _omitFieldNames ? '' : 'file',
        subBuilder: FileInfo.create)
    ..aOM<ProductInfo>(7, _omitFieldNames ? '' : 'product',
        subBuilder: ProductInfo.create)
    ..aOM<DocumentStatus>(8, _omitFieldNames ? '' : 'status',
        subBuilder: DocumentStatus.create)
    ..pc<SignTypeId>(
        9, _omitFieldNames ? '' : 'signTypeIds', $pb.PbFieldType.KE,
        valueOf: SignTypeId.valueOf,
        enumValues: SignTypeId.values,
        defaultEnumValue: SignTypeId.SIGN_TYPE_ID_UNKNOWN)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentView clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentView copyWith(void Function(DocumentView) updates) =>
      super.copyWith((message) => updates(message as DocumentView))
          as DocumentView;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentView create() => DocumentView._();
  @$core.override
  DocumentView createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DocumentView getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentView>(create);
  static DocumentView? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get parentId => $_getIZ(1);
  @$pb.TagNumber(2)
  set parentId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  DocumentValueType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(DocumentValueType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
  @$pb.TagNumber(4)
  DocumentValueType ensureType() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Timestamp get creationTime => $_getN(4);
  @$pb.TagNumber(5)
  set creationTime($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreationTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreationTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreationTime() => $_ensure(4);

  @$pb.TagNumber(6)
  FileInfo get file => $_getN(5);
  @$pb.TagNumber(6)
  set file(FileInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFile() => $_has(5);
  @$pb.TagNumber(6)
  void clearFile() => $_clearField(6);
  @$pb.TagNumber(6)
  FileInfo ensureFile() => $_ensure(5);

  @$pb.TagNumber(7)
  ProductInfo get product => $_getN(6);
  @$pb.TagNumber(7)
  set product(ProductInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasProduct() => $_has(6);
  @$pb.TagNumber(7)
  void clearProduct() => $_clearField(7);
  @$pb.TagNumber(7)
  ProductInfo ensureProduct() => $_ensure(6);

  @$pb.TagNumber(8)
  DocumentStatus get status => $_getN(7);
  @$pb.TagNumber(8)
  set status(DocumentStatus value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);
  @$pb.TagNumber(8)
  DocumentStatus ensureStatus() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<SignTypeId> get signTypeIds => $_getList(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
