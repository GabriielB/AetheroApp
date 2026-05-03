import 'package:aethero/features/favorites/data/favorites_local_datasource.dart';
import 'package:aethero/features/search/domain/entities/city.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoritesDataSourceProvider = Provider(
  (ref) => FavoritesLocalDataSource(),
);

final favoritesStreamProvider = StreamProvider<List<City>>((ref) async* {
  final dataSource = ref.watch(favoritesDataSourceProvider);

  yield dataSource.getAllFavorites();

  yield* dataSource.watchFavorites();
});

final isCityFavoriteProvider = Provider.family<bool, int>((ref, cityId) {
  final favorites = ref.watch(favoritesStreamProvider).value ?? [];
  return favorites.any((city) => city.id == cityId);
});
