import 'package:flutter/material.dart';
import 'weather_info_card.dart';

class WeatherDetailsRow extends StatelessWidget {
  const WeatherDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        WeatherInfoCard(label: 'Vento', value: '—'),
        WeatherInfoCard(label: 'Umidade', value: '—'),
        WeatherInfoCard(label: 'Chuva', value: '—'),
      ],
    );
  }
}
