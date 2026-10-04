import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colores.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    scaffoldBackgroundColor: Colors.white,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      surface: Colors.white,
      onSurface: Colors.black,
    ),

    cardColor: Colors.white,

    textTheme: GoogleFonts.poppinsTextTheme(),

    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xff121212),

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      surface: Color(0xff1E1E1E),
      onSurface: Colors.white,
    ),

    cardColor: const Color(0xff1E1E1E),

    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),

    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
  );
}
