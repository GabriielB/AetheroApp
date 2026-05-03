import 'package:aethero/features/favorites/presentation/providers/favorite_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../search/domain/entities/city.dart';

class Header extends ConsumerWidget {
  final City city;

  const Header({super.key, required this.city});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityName = city.name.split(',').first.trim();
    final locationContext = city.fullName.split(',').skip(1).join(',').trim();

    final isFavorite = ref.watch(isCityFavoriteProvider(city.id));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    LucideIcons.mapPin,
                    size: 24,
                    color: AppColors.primary,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      cityName,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                        letterSpacing: -1.2,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  locationContext.isNotEmpty
                      ? locationContext.toUpperCase()
                      : city.fullName.toUpperCase(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: AppColors.textSecondary.withValues(alpha: 0.6),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: isFavorite
                ? AppColors.primary.withValues(alpha: 0.1)
                : AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isFavorite
                  ? AppColors.primary
                  : AppColors.border.withValues(alpha: 0.5),
            ),
          ),
          child: IconButton(
            onPressed: () {
              ref.read(favoritesDataSourceProvider).toggleFavorite(city);
            },
            icon: Icon(
              isFavorite ? LucideIcons.bookmarkCheck : LucideIcons.bookmark,
              color: AppColors.primary,
              size: 22,
            ),
            visualDensity: VisualDensity.compact,
            tooltip: isFavorite ? 'Remover dos favoritos' : 'Salvar cidade',
          ),
        ),
      ],
    );
  }
}
