import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';

class SearchFeedbackDisplay extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconColor;

  const SearchFeedbackDisplay({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: (iconColor ?? AppColors.primary).withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 42,
                color: iconColor ?? AppColors.primary,
              ),
            ),
            const SizedBox(height: 32),
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
                color: AppColors.textSecondary.withValues(alpha: 0.7),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInitialView extends StatelessWidget {
  const SearchInitialView({super.key});
  @override
  Widget build(BuildContext context) => const SearchFeedbackDisplay(
    icon: LucideIcons.mapPin,
    title: 'Para onde vamos?',
    subtitle:
        'Busque por uma localidade para planejar seu treino com o melhor clima.',
  );
}

class SearchEmptyView extends StatelessWidget {
  const SearchEmptyView({super.key});
  @override
  Widget build(BuildContext context) => const SearchFeedbackDisplay(
    icon: LucideIcons.searchX,
    iconColor: AppColors.textSecondary,
    title: 'Nenhum resultado',
    subtitle: 'Não encontramos essa localização. Verifique a ortografia.',
  );
}

class SearchErrorView extends StatelessWidget {
  final String message;
  const SearchErrorView({super.key, required this.message});
  @override
  Widget build(BuildContext context) => SearchFeedbackDisplay(
    icon: LucideIcons.alertCircle,
    iconColor: AppColors.error,
    title: 'Ops! Algo deu errado',
    subtitle: message,
  );
}

class SearchLoadingView extends StatelessWidget {
  const SearchLoadingView({super.key});
  @override
  Widget build(BuildContext context) => const Center(
    child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.primary),
  );
}
