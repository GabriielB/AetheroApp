import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../search/domain/entities/city.dart';
import '../providers/favorite_providers.dart';
import '../../../../core/navigation/providers/selected_city_provider.dart';
import '../../../../core/navigation/providers/navigation_provider.dart';

class FavoriteCityCard extends ConsumerWidget {
  final City city;

  const FavoriteCityCard({super.key, required this.city});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityName = city.name.split(',').first.trim();

    final locationContext = city.fullName.split(',').skip(1).join(',').trim();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          ref.read(selectedCityProvider.notifier).state = city;
          ref.read(navigationIndexProvider.notifier).changeTab(1);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  LucideIcons.mapPin,
                  color: AppColors.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cityName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                        letterSpacing: -0.5,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      locationContext.isNotEmpty
                          ? locationContext.toUpperCase()
                          : city.fullName.toUpperCase(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        color: AppColors.textSecondary.withValues(alpha: 0.5),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () =>
                    ref.read(favoritesDataSourceProvider).toggleFavorite(city),
                icon: Icon(
                  LucideIcons.trash2,
                  color: Colors.redAccent.withValues(alpha: 0.7),
                  size: 18,
                ),
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
