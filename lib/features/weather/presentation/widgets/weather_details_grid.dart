import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/weather.dart';

class WeatherDetailsGrid extends StatelessWidget {
  final Weather weather;

  const WeatherDetailsGrid({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.3,
      children: [
        _DetailCard(
          'Vento',
          '${weather.windSpeed} km/h',
          LucideIcons.wind,
          Colors.blue,
        ),
        _DetailCard(
          'Umidade',
          '${weather.humidity}%',
          LucideIcons.droplets,
          Colors.cyan,
        ),
        _DetailCard(
          'Prob. Chuva',
          '${weather.precipitationProbability.toStringAsFixed(0)}%',
          LucideIcons.cloudRain,
          Colors.indigo,
        ),
        _DetailCard(
          'Precipitação',
          '${weather.precipitation} mm',
          LucideIcons.cloudDownload,
          Colors.blueGrey,
        ),
        _DetailCard(
          'Índice UV',
          weather.uvIndex.toStringAsFixed(1),
          LucideIcons.sun,
          Colors.orange,
        ),
        _DetailCard(
          'Sensação',
          '${weather.apparentTemperature.toStringAsFixed(0)}°',
          LucideIcons.thermometer,
          Colors.redAccent,
        ),
      ],
    );
  }
}

class _DetailCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _DetailCard(this.label, this.value, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 18),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
