import 'package:aethero/core/network/api_constants.dart';
import 'package:aethero/core/network/dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weatherDioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.weatherBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
    ),
  );
  dio.interceptors.add(ApiDioInterceptor());
  return dio;
});

final geocodingDioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.geocodingBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
    ),
  );
  dio.interceptors.add(ApiDioInterceptor());
  return dio;
});
