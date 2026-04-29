import 'package:aethero/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../search/domain/entities/city.dart';

class LocationHeader extends StatelessWidget {
  final City city;

  const LocationHeader({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    final subtitle = city.fullName.replaceFirst('${city.name}, ', '');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city.name,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
