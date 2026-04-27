import '../../domain/entities/city.dart';
import '../dtos/city_dto.dart';

extension CityDtoMapper on CityDto {
  City toEntity() {
    return City(
      id: id,
      name: name,
      country: country ?? '',
      region: admin1,
      latitude: latitude,
      longitude: longitude,
      timezone: timezone ?? 'UTC',
    );
  }
}
