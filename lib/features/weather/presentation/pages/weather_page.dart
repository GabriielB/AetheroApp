import 'package:aethero/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/utils/weather_code_mapper.dart';
import '../../../../core/navigation/providers/selected_city_provider.dart';
import '../providers/weather_provider.dart';
import '../widgets/location_header.dart';
import '../widgets/weather_main_card.dart';
import '../widgets/weather_details_row.dart';
import '../widgets/weather_states.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(selectedCityProvider);
    final weatherAsync = ref.watch(weatherProvider);

    return weatherAsync.when(
      loading: () => const LoadingWeatherState(),
      error: (e, _) => ErrorWeatherState(message: e.toString()),
      data: (weather) {
        if (city == null || weather == null) {
          return const EmptyWeatherState();
        }

        final info = mapWeatherCode(weather.weatherCode);

        return Scaffold(
          backgroundColor: AppColors.background,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationHeader(city: city),
                  const SizedBox(height: 24),

                  WeatherMainCard(
                    temperature: weather.temperature,
                    description: info.description,
                    icon: info.icon,
                  ),

                  const SizedBox(height: 24),

                  const WeatherDetailsRow(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
