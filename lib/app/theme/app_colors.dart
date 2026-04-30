import 'package:flutter/material.dart';

class AppColors {
  // Brand
  static const primary = Color(0xFF3B82F6);
  static const secondary = Color(0xFF22C55E);
  static const accent = Color(0xFFF59E0B);

  // Background
  static const background = Color(0xFFF3F4F6);
  static const surface = Colors.white;

  // Text
  static const textPrimary = Color(0xFF111827);
  static const textSecondary = Color(0xFF6B7280);
  static const textOnColor = Colors.white;

  // Icons & Borders
  static const iconInactive = Color(0xFF9CA3AF);
  static const border = Color(0xFFE5E7EB);

  // States
  static const error = Color(0xFFEF4444);
  static const success = Color(0xFF10B981);
  static const info = Color(0xFF3B82F6);

  // Helpers & Opacity
  static Color primaryLight = primary.withValues(alpha: 0.1);
  static Color secondaryLight = secondary.withValues(alpha: 0.1);

  // --- GRADIENTES DINÂMICOS ---

  // Gradiente para o Dia (Blue Sky)
  static const dayGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF60A5FA), Color(0xFF2563EB)],
  );

  // Gradiente para a Noite (Deep Midnight)
  static const nightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
  );
}
