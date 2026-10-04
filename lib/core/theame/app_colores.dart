import 'package:flutter/material.dart';

/// MotionGlow V5 Color System
/// Matte • Minimal • Material 3

class AppColors {
  AppColors._();

  // ===========================================================
  // Primary Brand
  // ===========================================================

  static const Color primary = Color(0xFF2563EB);
  static const Color primaryLight = Color(0xFFEAF2FF);
  static const Color primaryDark = Color(0xFF1D4ED8);

  // ===========================================================
  // Backgrounds
  // ===========================================================

  static const Color background = Color(0xFFF5F7FA);

  static const Color surface = Colors.white;

  static const Color card = Colors.white;

  static const Color divider = Color(0xFFE8ECF2);

  // ===========================================================
  // Text
  // ===========================================================

  static const Color textPrimary = Color(0xFF1F2937);

  static const Color textSecondary = Color(0xFF6B7280);

  static const Color textHint = Color(0xFF9CA3AF);

  static const Color textWhite = Colors.white;

  // ===========================================================
  // Status
  // ===========================================================

  static const Color success = Color(0xFF22C55E);

  static const Color warning = Color(0xFFF59E0B);

  static const Color error = Color(0xFFEF4444);

  static const Color info = Color(0xFF0EA5E9);

  // ===========================================================
  // Device Status
  // ===========================================================

  static const Color online = success;

  static const Color offline = error;

  static const Color maintenance = warning;

  // ===========================================================
  // Charts
  // ===========================================================

  static const Color chart1 = Color(0xFF2563EB);

  static const Color chart2 = Color(0xFF22C55E);

  static const Color chart3 = Color(0xFFF59E0B);

  static const Color chart4 = Color(0xFF8B5CF6);

  static const Color chart5 = Color(0xFF06B6D4);

  // ===========================================================
  // Controls
  // ===========================================================

  static const Color switchActive = primary;

  static const Color switchInactive = Color(0xFFD1D5DB);

  static const Color sliderActive = primary;

  static const Color sliderInactive = Color(0xFFE5E7EB);

  // ===========================================================
  // Icon Backgrounds
  // ===========================================================

  static const Color blueContainer = Color(0xFFEAF2FF);

  static const Color greenContainer = Color(0xFFEFFAF2);

  static const Color orangeContainer = Color(0xFFFFF7E6);

  static const Color redContainer = Color(0xFFFFEEEE);

  static const Color purpleContainer = Color(0xFFF5EEFF);

  // ===========================================================
  // Borders
  // ===========================================================

  static const Color border = Color(0xFFE5E7EB);

  static const Color borderDark = Color(0xFFD1D5DB);

  // ===========================================================
  // Analytics
  // ===========================================================

  static const Color energy = Color(0xFF2563EB);

  static const Color savings = Color(0xFF22C55E);

  static const Color motion = Color(0xFF8B5CF6);

  static const Color weather = Color(0xFFF59E0B);

  // ===========================================================
  // Transparent Helpers
  // ===========================================================

  static Color primaryOpacity(double opacity) =>
      primary.withValues(alpha: opacity);

  static Color successOpacity(double opacity) =>
      success.withValues(alpha: opacity);

  static Color warningOpacity(double opacity) =>
      warning.withValues(alpha: opacity);

  static Color errorOpacity(double opacity) => error.withValues(alpha: opacity);
}
