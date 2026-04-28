import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../search/domain/entities/city.dart';

class SelectedCityNotifier extends Notifier<City?> {
  @override
  City? build() {
    return null;
  }

  void selectCity(City city) {
    state = city;
  }

  void clear() {
    state = null;
  }
}

final selectedCityProvider = NotifierProvider<SelectedCityNotifier, City?>(
  SelectedCityNotifier.new,
);
