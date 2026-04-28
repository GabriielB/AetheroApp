import 'package:aethero/features/search/domain/entities/city.dart';
import 'package:aethero/features/weather/presentation/providers/selected_city_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationIndexProvider = NotifierProvider<NavigationNotifier, int>(
  NavigationNotifier.new,
);

class NavigationNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void changeTab(int index) {
    state = index;
  }
}

final selectedCityProvider = NotifierProvider<SelectedCityNotifier, City?>(
  SelectedCityNotifier.new,
);
