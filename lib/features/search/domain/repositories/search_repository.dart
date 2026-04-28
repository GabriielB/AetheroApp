import '../entities/city.dart';

abstract class SearchRepository {
  Future<List<City>> searchCity(String query);
}
