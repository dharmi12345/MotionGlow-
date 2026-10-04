import 'package:flutter/material.dart';

/// MotionGlow V5 Design System
/// Soft Matte Shadows

class AppShadows {
  AppShadows._();

  /// Small Shadow
  static const List<BoxShadow> sm = [
    BoxShadow(color: Color(0x0D000000), blurRadius: 8, offset: Offset(0, 2)),
  ];

  /// Medium Shadow (Most Used)
  static const List<BoxShadow> md = [
    BoxShadow(color: Color(0x12000000), blurRadius: 16, offset: Offset(0, 6)),
  ];

  /// Large Shadow (Cards)
  static const List<BoxShadow> lg = [
    BoxShadow(color: Color(0x14000000), blurRadius: 24, offset: Offset(0, 10)),
  ];

  /// Extra Large Shadow
  static const List<BoxShadow> xl = [
    BoxShadow(color: Color(0x18000000), blurRadius: 32, offset: Offset(0, 14)),
  ];

  /// Floating Bottom Navigation
  static const List<BoxShadow> navigation = [
    BoxShadow(color: Color(0x15000000), blurRadius: 30, offset: Offset(0, 12)),
  ];

  /// Floating Action Button
  static const List<BoxShadow> floating = [
    BoxShadow(color: Color(0x22000000), blurRadius: 22, offset: Offset(0, 10)),
  ];

  /// Dialog Shadow
  static const List<BoxShadow> dialog = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 40, offset: Offset(0, 18)),
  ];
}
