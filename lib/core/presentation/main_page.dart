import 'package:aethero/app/theme/app_colors.dart';
import 'package:aethero/features/favorites/presentation/pages/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../features/search/presentation/pages/search_page.dart';
import '../../features/weather/presentation/pages/weather_page.dart';
import '../navigation/providers/navigation_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationIndexProvider);

    final pages = const [SearchPage(), WeatherPage(), FavoritesPage()];

    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 70,
          backgroundColor: AppColors.surface,
          indicatorColor: Colors.transparent,

          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const IconThemeData(color: AppColors.primary, size: 24);
            }
            return const IconThemeData(color: AppColors.iconInactive, size: 22);
          }),

          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              );
            }
            return const TextStyle(color: AppColors.iconInactive);
          }),
        ),
        child: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            ref.read(navigationIndexProvider.notifier).changeTab(index);
          },
          animationDuration: const Duration(milliseconds: 300),

          destinations: const [
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Icon(LucideIcons.search),
              ),
              label: 'Buscar',
            ),
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Icon(LucideIcons.sun),
              ),
              label: 'Clima',
            ),
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Icon(LucideIcons.heart),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Icon(Icons.favorite),
              ),
              label: 'Favoritos',
            ),
          ],
        ),
      ),
    );
  }
}
