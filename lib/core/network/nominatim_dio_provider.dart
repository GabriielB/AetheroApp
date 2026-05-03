import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nominatimDioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'https://nominatim.openstreetmap.org',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'User-Agent': 'AetheroApp/1.0 (gabriel@email.com)'},
      responseType: ResponseType.json,
    ),
  );
});
