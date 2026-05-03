import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/city.dart';
import '../../../../core/navigation/providers/navigation_provider.dart';
import '../../../../core/navigation/providers/selected_city_provider.dart';
import 'search_list_item.dart';

class CityListSliver extends ConsumerWidget {
  final List<City> cities;

  const CityListSliver({super.key, required this.cities});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final city = cities[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CityListItem(
              city: city,
              onTap: () {
                ref.read(selectedCityProvider.notifier).selectCity(city);
                ref.read(navigationIndexProvider.notifier).changeTab(1);
              },
            ),
          );
        }, childCount: cities.length),
      ),
    );
  }
}
