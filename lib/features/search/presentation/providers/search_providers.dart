import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/search_repository_impl.dart';
import '../../domain/repositories/search_repository.dart';

import '../../../../core/network/nominatim_dio_provider.dart';
import '../../data/datasources/nominatim_remote_datasource.dart';

final nominatimDatasourceProvider = Provider<NominatimRemoteDatasource>((ref) {
  final dio = ref.read(nominatimDioProvider);
  return NominatimRemoteDatasource(dio);
});

final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  final datasource = ref.read(nominatimDatasourceProvider);
  return SearchRepositoryImpl(datasource);
});
