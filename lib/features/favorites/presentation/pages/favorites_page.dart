import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../providers/favorite_providers.dart';
import '../widgets/favorite_city_card.dart';
import '../widgets/empty_favorites.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesStreamProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              Row(
                children: [
                  const Text(
                    'Favoritos',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: AppColors.textPrimary,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.only(top: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Suas rotas e locais de treino salvos.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: favoritesAsync.when(
                  data: (cities) => cities.isEmpty
                      ? const EmptyFavorites()
                      : ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: cities.length,
                          itemBuilder: (context, index) =>
                              FavoriteCityCard(city: cities[index]),
                        ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                  error: (err, _) =>
                      Center(child: Text('Erro ao carregar: $err')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
