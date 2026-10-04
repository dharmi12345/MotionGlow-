import 'package:flutter/material.dart';

/// MotionGlow V5 Design System
/// Spacing Scale (8px Grid)

class AppSpacing {
  AppSpacing._();

  //==================================================
  // Insets
  //==================================================

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 40;
  static const double massive = 48;

  //==================================================
  // Screen Padding
  //==================================================

  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 20,
  );

  static const EdgeInsets screenHorizontal = EdgeInsets.symmetric(
    horizontal: 20,
  );

  static const EdgeInsets screenVertical = EdgeInsets.symmetric(vertical: 20);

  //==================================================
  // Card Padding
  //==================================================

  static const EdgeInsets card = EdgeInsets.all(24);

  static const EdgeInsets cardSmall = EdgeInsets.all(16);

  static const EdgeInsets cardLarge = EdgeInsets.all(28);

  //==================================================
  // Button Padding
  //==================================================

  static const EdgeInsets button = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 14,
  );

  static const EdgeInsets buttonLarge = EdgeInsets.symmetric(
    horizontal: 28,
    vertical: 18,
  );

  //==================================================
  // Input Padding
  //==================================================

  static const EdgeInsets input = EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 16,
  );

  //==================================================
  // List Item
  //==================================================

  static const EdgeInsets listTile = EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 14,
  );

  //==================================================
  // Chip
  //==================================================

  static const EdgeInsets chip = EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 8,
  );
}
