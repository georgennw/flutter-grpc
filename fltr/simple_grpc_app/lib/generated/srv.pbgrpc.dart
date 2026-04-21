// This is a generated file - do not edit.
//
// Generated from srv.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'srv.pb.dart' as $0;

export 'srv.pb.dart';

@$pb.GrpcServiceName('main.TextSrv')
class TextSrvClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TextSrvClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseStream<$0.TextsAnswer> getTexts(
    $0.TextRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getTexts, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.TextReply> postText(
    $0.Text request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$postText, request, options: options);
  }

  // method descriptors

  static final _$getTexts = $grpc.ClientMethod<$0.TextRequest, $0.TextsAnswer>(
      '/main.TextSrv/GetTexts',
      ($0.TextRequest value) => value.writeToBuffer(),
      $0.TextsAnswer.fromBuffer);
  static final _$postText = $grpc.ClientMethod<$0.Text, $0.TextReply>(
      '/main.TextSrv/PostText',
      ($0.Text value) => value.writeToBuffer(),
      $0.TextReply.fromBuffer);
}

@$pb.GrpcServiceName('main.TextSrv')
abstract class TextSrvServiceBase extends $grpc.Service {
  $core.String get $name => 'main.TextSrv';

  TextSrvServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TextRequest, $0.TextsAnswer>(
        'GetTexts',
        getTexts_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TextRequest.fromBuffer(value),
        ($0.TextsAnswer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Text, $0.TextReply>(
        'PostText',
        postText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Text.fromBuffer(value),
        ($0.TextReply value) => value.writeToBuffer()));
  }

  $async.Stream<$0.TextsAnswer> getTexts_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.TextRequest> $request) async* {
    yield* getTexts($call, await $request);
  }

  $async.Stream<$0.TextsAnswer> getTexts(
      $grpc.ServiceCall call, $0.TextRequest request);

  $async.Future<$0.TextReply> postText_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Text> $request) async {
    return postText($call, await $request);
  }

  $async.Future<$0.TextReply> postText($grpc.ServiceCall call, $0.Text request);
}
