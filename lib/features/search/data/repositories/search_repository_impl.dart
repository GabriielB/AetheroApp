import '../../domain/entities/city.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/nominatim_remote_datasource.dart';
import '../dtos/nominatim_place_dto.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this.datasource);

  final NominatimRemoteDatasource datasource;

  @override
  Future<List<City>> searchCity(String query) async {
    final places = await datasource.searchPlace(query);

    return places.map(_mapToCity).toList();
  }

  City _mapToCity(NominatimPlaceDto dto) {
    final address = dto.address;

    final name =
        address?.suburb ??
        address?.city ??
        address?.town ??
        address?.village ??
        dto.displayName;

    return City(
      id: dto.displayName.hashCode,
      name: name,
      fullName: dto.displayName,
      country: address?.country ?? '',
      placeType: dto.type,
      region: address?.state,
      latitude: double.tryParse(dto.lat) ?? 0,
      longitude: double.tryParse(dto.lon) ?? 0,
      timezone: 'UTC',
    );
  }
}
