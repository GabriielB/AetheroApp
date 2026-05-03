import 'package:aethero/features/weather/presentation/widgets/training_windows_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../core/navigation/providers/selected_city_provider.dart';
import '../../domain/utils/weather_code_mapper.dart';
import '../providers/weather_provider.dart';
import '../widgets/location_header.dart';
import '../widgets/weather_main_card.dart';
import '../widgets/weather_details_grid.dart';
import '../widgets/recommendation_card.dart';
import '../widgets/sun_info_card.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(selectedCityProvider);
    final weatherAsync = ref.watch(weatherProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: weatherAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 48,
                  color: AppColors.error,
                ),
                const SizedBox(height: 16),
                Text('Erro ao carregar clima: $error'),
              ],
            ),
          ),
          data: (weather) {
            if (city == null || weather == null) {
              return const Center(child: Text('Selecione uma cidade'));
            }

            final weatherInfo = mapWeatherCode(weather.weatherCode);

            return RefreshIndicator(
              onRefresh: () => ref.refresh(weatherProvider.future),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(city: city),
                    const SizedBox(height: 24),
                    WeatherMainCard(
                      weather: weather,
                      description: weatherInfo.description,
                    ),
                    const SizedBox(height: 20),
                    RecommendationCard(weather: weather),
                    const SizedBox(height: 24),
                    SunInfoCard(weather: weather),
                    const SizedBox(height: 24),
                    TrainingWindowsCard(
                      hourlyList: weather.hourlyForecast,
                      hourlyData: weather.hourlyForecast,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Detalhes Meteorológicos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    WeatherDetailsGrid(weather: weather),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
