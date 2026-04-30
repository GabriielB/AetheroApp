import 'package:aethero/features/weather/domain/entities/weather.dart';

int calculateWeatherScore(Weather w) {
  double score = 100;

  if (w.apparentTemperature > 32) {
    score -= (w.apparentTemperature - 32) * 4;
  } else if (w.apparentTemperature < 10) {
    score -= (10 - w.apparentTemperature) * 2;
  } else if (w.apparentTemperature > 26 && w.apparentTemperature <= 32) {
    score -= 10;
  }

  if (w.precipitation > 0) {
    if (w.precipitation < 2) score -= 15;
    if (w.precipitation >= 2) score -= 50;
  }

  if (w.isDay) {
    if (w.uvIndex >= 3 && w.uvIndex < 6) score -= 10;
    if (w.uvIndex >= 6 && w.uvIndex < 8) score -= 25;
    if (w.uvIndex >= 8) score -= 45;
  }

  if (w.humidity > 70) {
    score -= (w.humidity - 70) * 0.5;
  }

  if (w.windSpeed > 30) score -= 15;

  final hour = DateTime.now().hour;

  if (!w.isDay) {
    if (hour >= 21 || hour < 5) {
      score -= 20;
    } else {
      score -= 5;
    }
  }

  return score.clamp(0, 100).toInt();
}

String getWeatherRecommendation(Weather w) {
  final score = calculateWeatherScore(w);
  final hour = DateTime.now().hour;

  if (score >= 80) return "Tempo perfeito! Performance máxima.";
  if (score >= 60) return "Condições razoáveis para treinar.";
  if (score >= 40) return "Cuidado. Hidrate-se bem e diminua o ritmo.";

  if (w.precipitation >= 2) return "Chuva forte. Treine em local fechado.";
  if (w.uvIndex >= 8 && w.isDay) return "UV Extremo. Evite exposição ao sol.";
  if (hour >= 22) return "Muito tarde. Priorize seu descanso e sono.";

  return "Condições desfavoráveis para exercício.";
}

bool isGoodWeather(Weather w) {
  return calculateWeatherScore(w) >= 65;
}
