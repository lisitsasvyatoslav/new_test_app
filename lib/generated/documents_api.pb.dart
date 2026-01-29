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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $3;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $2;

import 'documents.pb.dart' as $1;
import 'documents_api.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'documents_api.pbenum.dart';

class CreateDocumentRequest extends $pb.GeneratedMessage {
  factory CreateDocumentRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? login,
    @$core.Deprecated('This field is deprecated.') $1.DocumentType? type,
    $core.String? description,
    $core.Iterable<$1.FileContent>? files,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? fields,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? authenticationId,
    $1.Firm? firm,
    $2.UInt32Value? parentId,
    $core.String? globalId,
    @$core.Deprecated('This field is deprecated.') $core.int? typeId,
    $core.String? typeCode,
  }) {
    final result = create();
    if (login != null) result.login = login;
    if (type != null) result.type = type;
    if (description != null) result.description = description;
    if (files != null) result.files.addAll(files);
    if (fields != null) result.fields.addEntries(fields);
    if (authenticationId != null) result.authenticationId = authenticationId;
    if (firm != null) result.firm = firm;
    if (parentId != null) result.parentId = parentId;
    if (globalId != null) result.globalId = globalId;
    if (typeId != null) result.typeId = typeId;
    if (typeCode != null) result.typeCode = typeCode;
    return result;
  }

  CreateDocumentRequest._();

  factory CreateDocumentRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateDocumentRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDocumentRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'grpc.edox.documents'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'login')
    ..aE<$1.DocumentType>(2, _omitFieldNames ? '' : 'type',
        enumValues: $1.DocumentType.values)
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pPM<$1.FileContent>(4, _omitFieldNames ? '' : 'files',
        subBuilder: $1.FileContent.create)
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'fields',
        entryClassName: 'CreateDocumentRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('grpc.edox.documents'))
    ..aInt64(6, _omitFieldNames ? '' : 'authenticationId')
    ..aE<$1.Firm>(7, _omitFieldNames ? '' : 'firm', enumValues: $1.Firm.values)
    ..aOM<$2.UInt32Value>(8, _omitFieldNames ? '' : 'parentId',
        subBuilder: $2.UInt32Value.create)
    ..aOS(9, _omitFieldNames ? '' : 'globalId')
    ..aI(10, _omitFieldNames ? '' : 'typeId')
    ..aOS(11, _omitFieldNames ? '' : 'typeCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDocumentRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDocumentRequest copyWith(
          void Function(CreateDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as CreateDocumentRequest))
          as CreateDocumentRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDocumentRequest create() => CreateDocumentRequest._();
  @$core.override
  CreateDocumentRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateDocumentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDocumentRequest>(create);
  static CreateDocumentRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set login($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearLogin() => $_clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $1.DocumentType get type => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set type($1.DocumentType value) => $_setField(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$1.FileContent> get files => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get fields => $_getMap(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $fixnum.Int64 get authenticationId => $_getI64(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set authenticationId($fixnum.Int64 value) => $_setInt64(5, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasAuthenticationId() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearAuthenticationId() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Firm get firm => $_getN(6);
  @$pb.TagNumber(7)
  set firm($1.Firm value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFirm() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirm() => $_clearField(7);

  @$pb.TagNumber(8)
  $2.UInt32Value get parentId => $_getN(7);
  @$pb.TagNumber(8)
  set parentId($2.UInt32Value value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasParentId() => $_has(7);
  @$pb.TagNumber(8)
  void clearParentId() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.UInt32Value ensureParentId() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get globalId => $_getSZ(8);
  @$pb.TagNumber(9)
  set globalId($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasGlobalId() => $_has(8);
  @$pb.TagNumber(9)
  void clearGlobalId() => $_clearField(9);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.int get typeId => $_getIZ(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set typeId($core.int value) => $_setSignedInt32(9, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasTypeId() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearTypeId() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get typeCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set typeCode($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTypeCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearTypeCode() => $_clearField(11);
}

class CreateDocumentResponse extends $pb.GeneratedMessage {
  factory CreateDocumentResponse({
    $core.int? documentId,
  }) {
    final result = create();
    if (documentId != null) result.documentId = documentId;
    return result;
  }

  CreateDocumentResponse._();

  factory CreateDocumentResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateDocumentResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDocumentResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'grpc.edox.documents'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'documentId', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDocumentResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDocumentResponse copyWith(
          void Function(CreateDocumentResponse) updates) =>
      super.copyWith((message) => updates(message as CreateDocumentResponse))
          as CreateDocumentResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDocumentResponse create() => CreateDocumentResponse._();
  @$core.override
  CreateDocumentResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateDocumentResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDocumentResponse>(create);
  static CreateDocumentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get documentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set documentId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDocumentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentId() => $_clearField(1);
}

class ListDocumentViewsRequest extends $pb.GeneratedMessage {
  factory ListDocumentViewsRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? userId,
    $3.Timestamp? from,
    $3.Timestamp? to,
    $core.int? type,
    $core.int? parentId,
    DocumentContent? content,
    $core.Iterable<$core.int>? documentIds,
    $core.int? statusId,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? authenticationId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (from != null) result.from = from;
    if (to != null) result.to = to;
    if (type != null) result.type = type;
    if (parentId != null) result.parentId = parentId;
    if (content != null) result.content = content;
    if (documentIds != null) result.documentIds.addAll(documentIds);
    if (statusId != null) result.statusId = statusId;
    if (authenticationId != null) result.authenticationId = authenticationId;
    return result;
  }

  ListDocumentViewsRequest._();

  factory ListDocumentViewsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDocumentViewsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDocumentViewsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'grpc.edox.documents'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'from',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'to',
        subBuilder: $3.Timestamp.create)
    ..aI(4, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'parentId', fieldType: $pb.PbFieldType.OU3)
    ..aE<DocumentContent>(6, _omitFieldNames ? '' : 'content',
        enumValues: DocumentContent.values)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'documentIds', $pb.PbFieldType.KU3)
    ..aI(8, _omitFieldNames ? '' : 'statusId', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(9, _omitFieldNames ? '' : 'authenticationId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDocumentViewsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDocumentViewsRequest copyWith(
          void Function(ListDocumentViewsRequest) updates) =>
      super.copyWith((message) => updates(message as ListDocumentViewsRequest))
          as ListDocumentViewsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDocumentViewsRequest create() => ListDocumentViewsRequest._();
  @$core.override
  ListDocumentViewsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDocumentViewsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDocumentViewsRequest>(create);
  static ListDocumentViewsRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get from => $_getN(1);
  @$pb.TagNumber(2)
  set from($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Timestamp get to => $_getN(2);
  @$pb.TagNumber(3)
  set to($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureTo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get parentId => $_getIZ(4);
  @$pb.TagNumber(5)
  set parentId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParentId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentId() => $_clearField(5);

  @$pb.TagNumber(6)
  DocumentContent get content => $_getN(5);
  @$pb.TagNumber(6)
  set content(DocumentContent value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get documentIds => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get statusId => $_getIZ(7);
  @$pb.TagNumber(8)
  set statusId($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStatusId() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatusId() => $_clearField(8);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $fixnum.Int64 get authenticationId => $_getI64(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set authenticationId($fixnum.Int64 value) => $_setInt64(8, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasAuthenticationId() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearAuthenticationId() => $_clearField(9);
}

class ListDocumentViewsResponse extends $pb.GeneratedMessage {
  factory ListDocumentViewsResponse({
    $core.Iterable<$1.DocumentView>? documents,
  }) {
    final result = create();
    if (documents != null) result.documents.addAll(documents);
    return result;
  }

  ListDocumentViewsResponse._();

  factory ListDocumentViewsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDocumentViewsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDocumentViewsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'grpc.edox.documents'),
      createEmptyInstance: create)
    ..pPM<$1.DocumentView>(1, _omitFieldNames ? '' : 'documents',
        subBuilder: $1.DocumentView.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDocumentViewsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDocumentViewsResponse copyWith(
          void Function(ListDocumentViewsResponse) updates) =>
      super.copyWith((message) => updates(message as ListDocumentViewsResponse))
          as ListDocumentViewsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDocumentViewsResponse create() => ListDocumentViewsResponse._();
  @$core.override
  ListDocumentViewsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDocumentViewsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDocumentViewsResponse>(create);
  static ListDocumentViewsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.DocumentView> get documents => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
