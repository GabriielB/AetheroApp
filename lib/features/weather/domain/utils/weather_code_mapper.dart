import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

class WeatherInfo {
  final String description;
  final IconData icon;

  const WeatherInfo({required this.description, required this.icon});
}

WeatherInfo mapWeatherCode(int code) {
  if (code == 0) {
    return const WeatherInfo(description: 'Céu limpo', icon: LucideIcons.sun);
  }

  if (code >= 1 && code <= 3) {
    return const WeatherInfo(
      description: 'Parcialmente nublado',
      icon: LucideIcons.cloudSun,
    );
  }

  if (code >= 45 && code <= 48) {
    return const WeatherInfo(
      description: 'Neblina',
      icon: LucideIcons.cloudFog,
    );
  }

  if (code >= 51 && code <= 67) {
    return const WeatherInfo(description: 'Chuva', icon: LucideIcons.cloudRain);
  }

  if (code >= 71 && code <= 77) {
    return const WeatherInfo(description: 'Neve', icon: LucideIcons.cloudSnow);
  }

  return const WeatherInfo(
    description: 'Desconhecido',
    icon: LucideIcons.helpCircle,
  );
}
