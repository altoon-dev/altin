import 'dart:async';
import 'package:dio/dio.dart';
import 'package:altyn_login/core/services/TokenStorage/token_storage.dart';
import 'package:altyn_login/di/dependency_injection.dart';

class RestClientService {
  late Dio _client;

  RestClientService(Dio client) {
    _client = client;
    _client.interceptors.add(_baseInterceptor());
  }

  final TokenStorage _tokenStorage = di<TokenStorage>();

  Interceptor _baseInterceptor() {
    return InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll({
        "Authorization": 'Basic YXBwOkY0UnZVRzRYQ2k=',
        "Content-Type": 'application/x-www-form-urlencoded',
      });
      return handler.next(options);
    }, onError: (error, handler) {
      //REFRESH TOKEN
    });
  }

  Future<Response> get(String url,
          {Map<String, dynamic>? params,
          CancelToken? cancelToken,
          Options? options}) =>
      _client.get(
        url,
        queryParameters: params,
        cancelToken: cancelToken,
        options: options,
      );

  Future<Response> post(String url,
          {dynamic body, dynamic parametres, Options? options}) =>
      _client.post(
        url,
        data: body,
        queryParameters: parametres,
        options: options,
      );

  Future<Response> put(String url, {dynamic body, Options? options}) =>
      _client.put(
        url,
        data: body,
        options: options,
      );

  Future<Response> delete(String url,
          {dynamic body, Options? options, Map<String, dynamic>? params}) =>
      _client.delete(
        url,
        data: body,
        options: options,
        queryParameters: params,
      );

  Future<Response> patch(
    String url, {
    dynamic body,
    Options? options,
    Function(int, int)? onSendProgress,
  }) =>
      _client.patch(
        url,
        data: body,
        options: options,
        onSendProgress: onSendProgress,
      );
}
