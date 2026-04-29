import 'package:aethero/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class WeatherMainCard extends StatelessWidget {
  final double temperature;
  final String description;
  final IconData icon;

  const WeatherMainCard({
    super.key,
    required this.temperature,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 12),
          Text(
            '${temperature.toStringAsFixed(0)}°C',
            style: const TextStyle(
              fontSize: 52,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
