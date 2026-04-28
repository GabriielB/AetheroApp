import 'package:aethero/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../search/domain/entities/city.dart';
import '../providers/selected_city_provider.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(selectedCityProvider);

    if (city == null) {
      return const _EmptyWeatherState();
    }

    return Scaffold(
      appBar: AppBar(title: Text(city.name), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _LocationHeader(city: city),
            const SizedBox(height: 24),
            const _WeatherMainCard(),
          ],
        ),
      ),
    );
  }
}

class _EmptyWeatherState extends StatelessWidget {
  const _EmptyWeatherState();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Selecione uma cidade', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class _LocationHeader extends StatelessWidget {
  final City city;

  const _LocationHeader({required this.city});

  @override
  Widget build(BuildContext context) {
    final subtitle = city.fullName.replaceFirst('${city.name}, ', '');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city.name,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}

class _WeatherMainCard extends StatelessWidget {
  const _WeatherMainCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '24°C',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Parcialmente nublado',
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
