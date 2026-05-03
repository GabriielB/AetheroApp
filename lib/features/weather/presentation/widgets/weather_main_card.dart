import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/weather_extensions.dart';

class WeatherMainCard extends StatelessWidget {
  final Weather weather;
  final String description;

  const WeatherMainCard({
    super.key,
    required this.weather,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final gradient = weather.isDay
        ? AppColors.dayGradient
        : AppColors.nightGradient;
    final secondaryTextColor = weather.isDay ? Colors.white70 : Colors.white60;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(weather.weatherIcon, size: 56, color: Colors.white),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(weather.periodIcon, size: 20, color: Colors.white),
                    const SizedBox(width: 6),
                    Text(
                      weather.periodLabel,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${weather.temperature.round()}°',
                style: const TextStyle(
                  fontSize: 72,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                  letterSpacing: -2,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'máx ${weather.tempMax.round()}°',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'mín ${weather.tempMin.round()}°',
                      style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            description.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(
                LucideIcons.thermometer,
                size: 16,
                color: secondaryTextColor,
              ),
              const SizedBox(width: 4),
              Text(
                'Sensação de ${weather.apparentTemperature.round()}°',
                style: TextStyle(
                  color: secondaryTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
