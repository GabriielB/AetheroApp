import 'package:flutter/material.dart';

class EmptyWeatherState extends StatelessWidget {
  const EmptyWeatherState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Selecione uma cidade')));
  }
}

class LoadingWeatherState extends StatelessWidget {
  const LoadingWeatherState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

class ErrorWeatherState extends StatelessWidget {
  final String message;

  const ErrorWeatherState({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Erro: $message')));
  }
}
