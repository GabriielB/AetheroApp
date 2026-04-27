import 'package:aethero/features/search/presentation/providers/search_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'city_search_state.dart';

class CitySearchController extends Notifier<CitySearchState> {
  Timer? _debounce;
  @override
  CitySearchState build() {
    ref.onDispose(() {
      _debounce?.cancel();
    });

    return const CitySearchState.initial();
  }

  Future<void> searchCity(String query) async {
    // cancela chamada anterior
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      if (query.isEmpty) {
        state = const CitySearchState.initial();
        return;
      }

      state = const CitySearchState.loading();

      try {
        final repository = ref.read(searchRepositoryProvider);

        final cities = await repository.searchCity(query);

        if (cities.isEmpty) {
          state = const CitySearchState.empty();
        } else {
          state = CitySearchState.success(cities);
        }
      } catch (e) {
        state = CitySearchState.error(e.toString());
      }
    });
  }
}

final citySearchControllerProvider =
    NotifierProvider<CitySearchController, CitySearchState>(
      CitySearchController.new,
    );
