import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../../domain/entities/hourly_weather.dart';

class TrainingWindowsCard extends StatelessWidget {
  final List<HourlyWeather> hourlyData;

  const TrainingWindowsCard({
    super.key,
    required this.hourlyData,
    required List<HourlyWeather> hourlyList,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final upcoming = hourlyData
        .where((h) => h.time.isAfter(now.subtract(const Duration(minutes: 30))))
        .take(12)
        .toList();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    LucideIcons.dumbbell,
                    size: 18,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Melhores Horários',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      'Sugestões para treino externo',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 130,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: upcoming.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final h = upcoming[index];

                final bool isRainy = h.precipitationProbability > 50;
                final bool isHot = h.temperature > 30 || h.uvIndex > 7;
                final bool isIdeal =
                    h.temperature >= 18 && h.temperature <= 24 && !isRainy;

                String statusLabel = "BOM";
                Color statusColor = const Color(0xFF6366F1);
                IconData statusIcon = LucideIcons.check;

                if (isIdeal) {
                  statusLabel = "IDEAL";
                  statusColor = Colors.green;
                  statusIcon = LucideIcons.trophy;
                } else if (isRainy) {
                  statusLabel = "CHUVA";
                  statusColor = Colors.blue;
                  statusIcon = LucideIcons.cloudRain;
                } else if (isHot) {
                  statusLabel = "EVITAR";
                  statusColor = Colors.orange;
                  statusIcon = LucideIcons.alertCircle;
                }

                return Column(
                  children: [
                    Text(
                      index == 0 ? "Agora" : "${h.time.hour}h",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: index == 0
                            ? FontWeight.bold
                            : FontWeight.w500,
                        color: index == 0
                            ? AppColors.primary
                            : AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 65,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        color: statusColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: statusColor.withValues(alpha: 0.2),
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(statusIcon, size: 18, color: statusColor),
                          const SizedBox(height: 6),
                          Text(
                            statusLabel,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: statusColor,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${h.temperature.round()}°",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
