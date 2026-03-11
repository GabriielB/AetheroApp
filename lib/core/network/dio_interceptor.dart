import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiDioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint('Request: [${options.method}]${options.uri} ');
      debugPrint('Query Parameters: ${options.queryParameters}');
      debugPrint('Headers: ${options.headers}');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        'Response: [${response.statusCode}] ${response.requestOptions}',
      );
      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint('Error: [${err.response?.statusCode}] ${err.requestOptions}');
      debugPrint('Message: ${err.message}');
    }
    handler.next(err);
  }
}
