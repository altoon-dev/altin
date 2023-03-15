import 'dart:async';
import 'package:altyn_login/core/client/api_paths.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClientService {
  late Dio _client;

  RestClientService() {
    _client = Dio(
      BaseOptions(
        baseUrl: apiBaseUrl,
        headers: {
          "Authorization": 'Basic YXBwOkY0UnZVRzRYQ2k=',
        },
        contentType: 'application/x-www-form-urlencoded',
        receiveTimeout: const Duration(milliseconds: 30000),
        connectTimeout: const Duration(milliseconds: 30000),
      ),
    );
    _client.interceptors.add(PrettyDioLogger());
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
