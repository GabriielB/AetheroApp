import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';

class _BaseWeatherState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  final LinearGradient? gradient;

  const _BaseWeatherState({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: AppColors.surface,
          gradient: gradient,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
          boxShadow: [
            BoxShadow(
              color: iconColor.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: iconColor),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherEmptyState extends StatelessWidget {
  const WeatherEmptyState({super.key});
  @override
  Widget build(BuildContext context) {
    return const _BaseWeatherState(
      icon: LucideIcons.mapPinned,
      title: 'Nenhuma localização selecionada',
      subtitle:
          'Selecione uma localização na busca para ver a previsão do tempo.',
      iconColor: AppColors.primary,
    );
  }
}

class WeatherLoadingState extends StatelessWidget {
  const WeatherLoadingState({super.key});
  @override
  Widget build(BuildContext context) {
    return const _BaseWeatherState(
      icon: LucideIcons.cloudSun,
      title: 'Sincronizando...',
      subtitle: 'Buscando dados meteorológicos em tempo real.',
      iconColor: AppColors.primary,
      gradient: AppColors.cardInitialGradient,
    );
  }
}

class WeatherErrorState extends StatelessWidget {
  final String message;
  const WeatherErrorState({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    return _BaseWeatherState(
      icon: LucideIcons.cloudLightning,
      title: 'Ops! Falha no sinal',
      subtitle: message,
      iconColor: AppColors.error,
    );
  }
}
