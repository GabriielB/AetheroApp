import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/city_search_controller.dart';
import '../providers/city_search_state.dart';
import '../../domain/entities/city.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(citySearchControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Buscar cidade'), centerTitle: true),
      body: Column(
        children: [
          const _SearchField(),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: state.when(
                initial: () => const _InitialState(),
                loading: () => const _LoadingState(),
                empty: () => const _EmptyState(),
                error: (msg) => _ErrorState(message: msg),
                success: (cities) => _CityList(cities: cities),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends ConsumerWidget {
  const _SearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar cidade ou bairro...',
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          ref.read(citySearchControllerProvider.notifier).searchCity(value);
        },
      ),
    );
  }
}

class _InitialState extends StatelessWidget {
  const _InitialState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Digite uma cidade ou bairro',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nenhum local encontrado', style: TextStyle(fontSize: 16)),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;

  const _ErrorState({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Erro: $message', style: const TextStyle(color: Colors.red)),
    );
  }
}

class _CityList extends StatelessWidget {
  final List<City> cities;

  const _CityList({required this.cities});

  IconData _getIcon(String? type) {
    final t = type?.toLowerCase();

    switch (t) {
      case 'city':
      case 'administrative':
      case 'municipality':
        return LucideIcons.mapPin;

      case 'town':
      case 'village':
      case 'hamlet':
        return LucideIcons.mapPinHouse;

      case 'suburb':
      case 'neighbourhood':
        return LucideIcons.mapPinHouse;

      default:
        return LucideIcons.navigation;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: cities.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final city = cities[index];

        final subtitle = city.fullName.replaceFirst('${city.name}, ', '');

        return InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: city.placeType == 'suburb'
                        ? Colors.green.withValues(alpha: 0.1)
                        : Colors.blue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _getIcon(city.placeType),
                    size: 20,
                    color: city.placeType == 'suburb'
                        ? Colors.green
                        : Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
