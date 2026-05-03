import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'city_search_state.dart';
import 'search_providers.dart';

class CitySearchController extends Notifier<CitySearchState> {
  Timer? _debounce;

  @override
  CitySearchState build() {
    ref.onDispose(() {
      _debounce?.cancel();
    });

    return const CitySearchState.initial();
  }

  void clearSearch() {
    _debounce?.cancel();
    state = const CitySearchState.initial();
  }

  Future<void> searchCity(String query) async {
    _debounce?.cancel();

    if (query.trim().isEmpty) {
      state = const CitySearchState.initial();
      return;
    }

    _debounce = Timer(const Duration(milliseconds: 500), () async {
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
    NotifierProvider.autoDispose<CitySearchController, CitySearchState>(
      CitySearchController.new,
    );
