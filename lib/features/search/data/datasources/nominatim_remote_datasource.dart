import 'package:dio/dio.dart';

import '../dtos/nominatim_place_dto.dart';

class NominatimRemoteDatasource {
  NominatimRemoteDatasource(this.dio);

  final Dio dio;

  Future<List<NominatimPlaceDto>> searchPlace(String query) async {
    final response = await dio.get(
      '/search',
      queryParameters: {
        'q': query,
        'format': 'json',
        'addressdetails': 1,
        'limit': 10,
      },
    );

    final data = response.data as List;

    return data.map((e) => NominatimPlaceDto.fromJson(e)).toList();
  }
}
