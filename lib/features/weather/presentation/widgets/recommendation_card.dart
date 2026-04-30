import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/weather.dart';
import 'utils/weather_score.dart';

class RecommendationCard extends StatelessWidget {
  final Weather weather;

  const RecommendationCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final score = calculateWeatherScore(weather);
    final isGood = isGoodWeather(weather);
    final recommendation = getWeatherRecommendation(weather);

    final statusColor = _getStatusColor(score);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: statusColor.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          _buildProgressCircle(score, statusColor),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      isGood
                          ? LucideIcons.checkCircle
                          : LucideIcons.alertCircle,
                      size: 16,
                      color: statusColor,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'CLIMA ATUAL PARA TREINO ',
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  recommendation,
                  style: TextStyle(
                    color: statusColor.darken(0.2),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(int score) {
    if (score >= 75) return AppColors.success;
    if (score >= 50) return AppColors.accent;
    return AppColors.error;
  }

  Widget _buildProgressCircle(int score, Color color) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 58,
          height: 58,
          child: CircularProgressIndicator(
            value: score / 100,
            strokeWidth: 7,
            color: color,
            backgroundColor: color.withValues(alpha: 0.15),
            strokeCap: StrokeCap.round,
          ),
        ),
        Text(
          '$score',
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

// escurecer cor caso necessário
extension ColorExt on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}
