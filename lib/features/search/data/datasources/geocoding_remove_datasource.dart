import 'package:dio/dio.dart';
import '../dtos/city_dto.dart';
import '../dtos/city_search_response_dto.dart';

class GeocodingRemoteDatasource {
  GeocodingRemoteDatasource(this.dio);

  final Dio dio;

  Future<List<CityDto>> searchCity(String query) async {
    final response = await dio.get(
      '/search',
      queryParameters: {
        'name': query,
        'count': 10,
        'language': 'pt',
        'format': 'json',
      },
    );

    final data = response.data;

    final dto = CitySearchResponseDto.fromJson(data);

    return dto.results;
  }
}
