// This is a generated file - do not edit.
//
// Generated from srv.proto.

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

@$core.Deprecated('Use textRequestDescriptor instead')
const TextRequest$json = {
  '1': 'TextRequest',
};

/// Descriptor for `TextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textRequestDescriptor =
    $convert.base64Decode('CgtUZXh0UmVxdWVzdA==');

@$core.Deprecated('Use textReplyDescriptor instead')
const TextReply$json = {
  '1': 'TextReply',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TextReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textReplyDescriptor =
    $convert.base64Decode('CglUZXh0UmVwbHkSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use textsAnswerDescriptor instead')
const TextsAnswer$json = {
  '1': 'TextsAnswer',
  '2': [
    {'1': 'texts', '3': 1, '4': 3, '5': 11, '6': '.main.Text', '10': 'texts'},
  ],
};

/// Descriptor for `TextsAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textsAnswerDescriptor = $convert.base64Decode(
    'CgtUZXh0c0Fuc3dlchIgCgV0ZXh0cxgBIAMoCzIKLm1haW4uVGV4dFIFdGV4dHM=');

@$core.Deprecated('Use textDescriptor instead')
const Text$json = {
  '1': 'Text',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 't', '3': 2, '4': 1, '5': 9, '10': 't'},
  ],
};

/// Descriptor for `Text`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textDescriptor =
    $convert.base64Decode('CgRUZXh0Eg4KAmlkGAEgASgJUgJpZBIMCgF0GAIgASgJUgF0');
