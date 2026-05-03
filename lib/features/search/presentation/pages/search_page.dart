import 'package:aethero/features/search/presentation/providers/city_search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../providers/city_search_controller.dart';
import '../widgets/city_list.dart';
import '../widgets/search_field.dart';
import '../widgets/search_header.dart';
import '../widgets/search_states.dart';
import '../widgets/search_suggestions.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(citySearchControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SearchHeader()),

            const SliverToBoxAdapter(child: SearchField()),

            state.when(
              initial: () => const SliverToBoxAdapter(child: _InitialContent()),

              loading: () =>
                  const SliverToBoxAdapter(child: SearchLoadingState()),

              empty: () => const SliverToBoxAdapter(child: SearchEmptyState()),

              error: (msg) =>
                  SliverToBoxAdapter(child: SearchErrorState(message: msg)),

              success: (cities) => SliverPadding(
                padding: const EdgeInsets.only(bottom: 24),
                sliver: CityListSliver(cities: cities),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// organiza o conteudo que aparece antes de qualquer busca ser feita
class _InitialContent extends StatelessWidget {
  const _InitialContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 12),

        SearchInitialState(),

        SizedBox(height: 32),

        SearchSuggestions(),

        SizedBox(height: 40),
      ],
    );
  }
}
