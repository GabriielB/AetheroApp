import 'package:flutter/material.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/weather.dart';

class WeatherMainCard extends StatelessWidget {
  final Weather weather;
  final String description;
  final IconData icon;

  const WeatherMainCard({
    super.key,
    required this.weather,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // Define o gradiente e a cor do texto com base no período do dia
    final gradient = weather.isDay
        ? AppColors.dayGradient
        : AppColors.nightGradient;
    final secondaryTextColor = weather.isDay ? Colors.white70 : Colors.white60;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: gradient, // Gradiente dinâmico
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: (weather.isDay ? AppColors.primary : Colors.black)
                .withValues(alpha: 0.25),
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
              Icon(icon, size: 64, color: Colors.white),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    weather.isDay ? 'Hoje' : 'Esta Noite',
                    style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '${weather.tempMax.toStringAsFixed(0)}° / ${weather.tempMin.toStringAsFixed(0)}°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            '${weather.temperature.toStringAsFixed(0)}°',
            style: const TextStyle(
              fontSize: 86,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          Text(
            description.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Sensação térmica de ${weather.apparentTemperature.toStringAsFixed(0)}°',
            style: TextStyle(color: secondaryTextColor),
          ),
        ],
      ),
    );
  }
}
