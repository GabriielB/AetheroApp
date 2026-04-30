import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/weather.dart';

class SunInfoCard extends StatelessWidget {
  final Weather weather;

  const SunInfoCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _SunTime(
            label: 'Nascer do sol',
            time: weather.sunrise,
            icon: LucideIcons.sunrise,
            color: Colors.orangeAccent,
          ),
          Container(height: 40, width: 1, color: AppColors.border),
          _SunTime(
            label: 'Pôr do sol',
            time: weather.sunset,
            icon: LucideIcons.sunset,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}

class _SunTime extends StatelessWidget {
  final String label;
  final String time;
  final IconData icon;
  final Color color;

  const _SunTime({
    required this.label,
    required this.time,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 8),
        Text(
          time,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
        ),
      ],
    );
  }
}
