import '../../domain/entities/city.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/geocoding_remove_datasource.dart';
import '../mappers/city_mapper.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this.remoteDatasource);

  final GeocodingRemoteDatasource remoteDatasource;

  @override
  Future<List<City>> searchCity(String query) async {
    final dtos = await remoteDatasource.searchCity(query);

    return dtos.map((e) => e.toEntity()).toList();
  }
}
