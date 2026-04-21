// This is a generated file - do not edit.
//
// Generated from srv.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TextRequest extends $pb.GeneratedMessage {
  factory TextRequest() => create();

  TextRequest._();

  factory TextRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'main'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextRequest copyWith(void Function(TextRequest) updates) =>
      super.copyWith((message) => updates(message as TextRequest))
          as TextRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextRequest create() => TextRequest._();
  @$core.override
  TextRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextRequest>(create);
  static TextRequest? _defaultInstance;
}

class TextReply extends $pb.GeneratedMessage {
  factory TextReply({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TextReply._();

  factory TextReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextReply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'main'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextReply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextReply copyWith(void Function(TextReply) updates) =>
      super.copyWith((message) => updates(message as TextReply)) as TextReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextReply create() => TextReply._();
  @$core.override
  TextReply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextReply>(create);
  static TextReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class TextsAnswer extends $pb.GeneratedMessage {
  factory TextsAnswer({
    $core.Iterable<Text>? texts,
  }) {
    final result = create();
    if (texts != null) result.texts.addAll(texts);
    return result;
  }

  TextsAnswer._();

  factory TextsAnswer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextsAnswer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextsAnswer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'main'),
      createEmptyInstance: create)
    ..pPM<Text>(1, _omitFieldNames ? '' : 'texts', subBuilder: Text.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextsAnswer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextsAnswer copyWith(void Function(TextsAnswer) updates) =>
      super.copyWith((message) => updates(message as TextsAnswer))
          as TextsAnswer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextsAnswer create() => TextsAnswer._();
  @$core.override
  TextsAnswer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextsAnswer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextsAnswer>(create);
  static TextsAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Text> get texts => $_getList(0);
}

class Text extends $pb.GeneratedMessage {
  factory Text({
    $core.String? id,
    $core.String? t,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (t != null) result.t = t;
    return result;
  }

  Text._();

  factory Text.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Text.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Text',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'main'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 't')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Text clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Text copyWith(void Function(Text) updates) =>
      super.copyWith((message) => updates(message as Text)) as Text;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Text create() => Text._();
  @$core.override
  Text createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Text getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Text>(create);
  static Text? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get t => $_getSZ(1);
  @$pb.TagNumber(2)
  set t($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasT() => $_has(1);
  @$pb.TagNumber(2)
  void clearT() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
