import 'package:aethero/features/weather/domain/entities/weather.dart';
import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

extension WeatherIconExtension on Weather {
  IconData get weatherIcon {
    return switch (weatherCode) {
      0 => isDay ? LucideIcons.sun : LucideIcons.moon,
      1 || 2 => isDay ? LucideIcons.cloudSun : LucideIcons.cloudMoon,
      3 => LucideIcons.cloud,
      45 || 48 => LucideIcons.cloudCog,
      51 || 53 || 55 => LucideIcons.cloudDrizzle,
      61 || 63 || 65 => LucideIcons.cloudRain,
      80 || 81 || 82 => LucideIcons.cloudRain,
      95 || 96 || 99 => LucideIcons.cloudLightning,
      _ => isDay ? LucideIcons.sun : LucideIcons.moon,
    };
  }

  IconData get periodIcon =>
      isDay ? LucideIcons.sunMedium : LucideIcons.moonStar;
  String get periodLabel => isDay ? "DIA" : "NOITE";
}
