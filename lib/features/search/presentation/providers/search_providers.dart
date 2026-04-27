import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/datasources/geocoding_remove_datasource.dart';
import '../../data/repositories/search_repository_impl.dart';
import '../../domain/repositories/search_repository.dart';

// provider da geocoding
final geocodingDatasourceProvider = Provider<GeocodingRemoteDatasource>((ref) {
  final dio = ref.read(geocodingDioProvider);
  return GeocodingRemoteDatasource(dio);
});

// provider do repositorio
final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  final datasource = ref.read(geocodingDatasourceProvider);
  return SearchRepositoryImpl(datasource);
});
