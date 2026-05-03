import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';

class _BaseSearchStateCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget illustration;
  final LinearGradient? gradientBackground;

  const _BaseSearchStateCard({
    required this.title,
    required this.subtitle,
    required this.illustration,
    this.gradientBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: gradientBackground ?? AppColors.cardInitialGradient,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 120, child: Center(child: illustration)),
          const SizedBox(height: 24),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: AppColors.textPrimary,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: AppColors.textSecondary.withValues(alpha: 0.9),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchInitialState extends StatelessWidget {
  const SearchInitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BaseSearchStateCard(
      title: 'Para onde vamos?',
      subtitle: 'Encontre o clima perfeito para o seu treino.',
      illustration: Stack(
        alignment: Alignment.center,
        children: [
          Icon(LucideIcons.compass, size: 100, color: AppColors.primary),
        ],
      ),
    );
  }
}

class SearchLoadingState extends StatelessWidget {
  const SearchLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return _BaseSearchStateCard(
      title: 'Buscando...',
      subtitle: 'Localizando as melhores condições para você.',
      illustration: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              strokeCap: StrokeCap.round,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            ),
          ),
          Icon(
            LucideIcons.search,
            size: 30,
            color: AppColors.primary.withValues(alpha: 0.5),
          ),
        ],
      ),
    );
  }
}

class SearchEmptyState extends StatelessWidget {
  const SearchEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BaseSearchStateCard(
      title: 'Não encontramos',
      subtitle: 'Tente outro nome ou uma localidade vizinha.',
      illustration: Icon(
        LucideIcons.searchX,
        size: 80,
        color: AppColors.textSecondary,
      ),
      gradientBackground: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [AppColors.surface, Color(0xFFEEEEEE)],
      ),
    );
  }
}

class SearchErrorState extends StatelessWidget {
  final String message;
  const SearchErrorState({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return _BaseSearchStateCard(
      title: 'Ops! Erro na conexão',
      subtitle: message.contains('connection')
          ? 'Verifique sua internet ou tente novamente.'
          : 'Não conseguimos carregar os dados agora.',
      illustration: const Icon(
        LucideIcons.alertTriangle,
        size: 80,
        color: AppColors.error,
      ),
      gradientBackground: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [AppColors.surface, Color(0xFFFFEBEE)],
      ),
    );
  }
}
