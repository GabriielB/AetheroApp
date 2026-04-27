import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/city_search_controller.dart';
import '../providers/city_search_state.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(citySearchControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Buscar cidade')),
      body: Column(
        children: [
          _SearchField(),
          Expanded(
            child: state.when(
              initial: () => const Center(child: Text('Digite uma cidade')),
              loading: () => const Center(child: CircularProgressIndicator()),
              empty: () =>
                  const Center(child: Text('Nenhuma cidade encontrada')),
              error: (msg) => Center(child: Text('Erro: $msg')),
              success: (cities) => ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  final city = cities[index];

                  return ListTile(
                    title: Text(city.name),
                    subtitle: Text(
                      '${city.name} — ${city.region ?? ''}, ${city.country}',
                    ),
                  );
                },
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
        decoration: const InputDecoration(
          hintText: 'Digite uma cidade',
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          ref.read(citySearchControllerProvider.notifier).searchCity(value);
        },
      ),
    );
  }
}
