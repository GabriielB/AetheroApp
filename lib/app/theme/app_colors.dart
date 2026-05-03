import 'package:flutter/material.dart';

class AppColors {
  // brand
  static const primary = Color(0xFF3B82F6);
  static const secondary = Color(0xFF22C55E);
  static const accent = Color(0xFFF59E0B);

  static const background = Color(0xFFF1F5F9);
  static const surface = Colors.white;

  // text
  static const textPrimary = Color(0xFF0F172A);
  static const textSecondary = Color(0xFF64748B);
  static const textOnColor = Colors.white;

  // icones e bordas
  static const iconInactive = Color(0xFF94A3B8);
  static const border = Color(0xFFE2E8F0);

  // estados
  static const error = Color(0xFFEF4444);
  static const success = Color(0xFF10B981);
  static const info = Color(0xFF3B82F6);

  static const cardBlue = Color(0xFFE0F2FE);
  static const cardGreen = Color(0xFFDCFCE7);
  static const cardOrange = Color(0xFFFFEDD5);
  static const cardRed = Color(0xFFFEE2E2);

  static const cityMaceio = Color(0xFF06B6D4);
  static const cityRio = Color(0xFFF59E0B);
  static const citySP = Color(0xFF6366F1);
  static const cityBH = Color(0xFF10B981);

  // helpers
  static Color primaryLight = primary.withValues(alpha: 0.1);

  // gradientes
  static const dayGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF60A5FA), Color(0xFF2563EB)],
  );

  //
  static const nightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
  );

  static const cardInitialGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFE0F2FE), Color(0xFFBAE6FD)],
  );
}
