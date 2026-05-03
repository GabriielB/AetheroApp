import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/city.dart';

class CityListItem extends StatelessWidget {
  final City city;
  final VoidCallback onTap;

  const CityListItem({super.key, required this.city, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // remove o nome da cidade do fullName para não repetir
    final subtitle = city.fullName.replaceFirst('${city.name}, ', '');

    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            LucideIcons.mapPin,
            color: AppColors.primary,
            size: 20,
          ),
        ),
        title: Text(
          city.name,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16,
            color: AppColors.textPrimary,
          ),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            color: AppColors.textSecondary.withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          LucideIcons.chevronRight,
          color: AppColors.border,
          size: 18,
        ),
      ),
    );
  }
}
