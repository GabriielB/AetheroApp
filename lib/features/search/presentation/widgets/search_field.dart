import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import '../../../../app/theme/app_colors.dart';
import '../providers/city_search_controller.dart';

class SearchField extends ConsumerStatefulWidget {
  const SearchField({super.key});

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onClear() {
    _controller.clear();

    ref.read(citySearchControllerProvider.notifier).clearSearch();

    FocusScope.of(context).unfocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: TextField(
          controller: _controller,
          style: const TextStyle(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            hintText: 'Onde você quer treinar?',
            hintStyle: const TextStyle(
              color: AppColors.textSecondary,
              fontWeight: FontWeight.normal,
            ),
            prefixIcon: const Icon(
              LucideIcons.search,
              color: AppColors.primary,
              size: 20,
            ),

            // animacao x
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(
                      LucideIcons.x,
                      size: 18,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: _onClear,
                  )
                : null,

            filled: true,
            fillColor: AppColors.surface,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.5,
              ),
            ),
          ),
          onChanged: (value) {
            ref.read(citySearchControllerProvider.notifier).searchCity(value);
            setState(() {});
          },
        ),
      ),
    );
  }
}
