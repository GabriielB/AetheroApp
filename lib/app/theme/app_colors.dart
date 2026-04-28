import 'package:flutter/material.dart';

class AppColors {
  // brand
  static const primary = Color(0xFF3B82F6);
  static const secondary = Color(0xFF22C55E);

  // background
  static const background = Color(0xFFF9FAFB);
  static const surface = Colors.white;

  // text
  static const textPrimary = Color(0xFF111827);
  static const textSecondary = Color(0xFF6B7280);

  // incons
  static const iconInactive = Color(0xFF9CA3AF);

  // states
  static const error = Colors.red;

  // hellpers
  static Color primaryLight = primary.withValues(alpha: 0.12);
  static Color secondaryLight = secondary.withValues(alpha: 0.12);
}
