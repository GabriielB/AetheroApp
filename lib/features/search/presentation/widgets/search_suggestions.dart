import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../providers/city_search_controller.dart';

class SearchSuggestions extends ConsumerWidget {
  const SearchSuggestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions = [
      {
        'name': 'Maceió',
        'icon': LucideIcons.palmtree,
        'color': AppColors.cityMaceio,
        'bgColor': AppColors.cardBlue,
      },
      {
        'name': 'São Paulo',
        'icon': LucideIcons.building2,
        'color': AppColors.citySP,
        'bgColor': const Color(0xFFEEF2FF),
      },
      {
        'name': 'Rio de Janeiro',
        'icon': LucideIcons.sun,
        'color': AppColors.cityRio,
        'bgColor': AppColors.cardOrange,
      },
      {
        'name': 'Belo Horizonte',
        'icon': LucideIcons.mountain,
        'color': AppColors.cityBH,
        'bgColor': AppColors.cardGreen,
      },
      {
        'name': 'Salvador',
        'icon': LucideIcons.waves,
        'color': const Color(0xFF0EA5E9),
        'bgColor': const Color(0xFFE0F2FE),
      },
      {
        'name': 'Brasília',
        'icon': LucideIcons.landmark,
        'color': AppColors.textSecondary,
        'bgColor': AppColors.background,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  LucideIcons.trendingUp,
                  size: 18,
                  color: AppColors.primary,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Destinos Populares',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2.2,
              ),
              itemCount: suggestions.length,
              itemBuilder: (context, index) {
                final city = suggestions[index];
                return _SuggestionCard(
                  label: city['name'] as String,
                  icon: city['icon'] as IconData,
                  color: city['color'] as Color,
                  backgroundColor: city['bgColor'] as Color,
                  onTap: () {
                    ref
                        .read(citySearchControllerProvider.notifier)
                        .searchCity(city['name'] as String);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SuggestionCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onTap;

  const _SuggestionCard({
    required this.label,
    required this.icon,
    required this.color,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor.withValues(alpha: 0.5),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color.withValues(alpha: 0.1), width: 1),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 14, color: color),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
