import 'package:hive_ce/hive.dart';
import '../../search/domain/entities/city.dart';

class FavoritesLocalDataSource {
  static const String boxName = 'favorites_box';

  Box<City> get _box => Hive.box<City>(boxName);

  Future<void> toggleFavorite(City city) async {
    if (_box.containsKey(city.id)) {
      await _box.delete(city.id);
    } else {
      await _box.put(city.id, city);
    }
  }

  List<City> getAllFavorites() {
    return _box.values.toList();
  }

  Stream<List<City>> watchFavorites() {
    return _box.watch().map((_) => _box.values.toList());
  }
}
