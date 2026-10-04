import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/provider/theme_provider.dart';
import 'core/theame/app_theme.dart';
import 'features/auth/login/login_screen.dart';

class MotionGlowApp extends StatelessWidget {
  const MotionGlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "MotionGlow",

            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.themeMode,

            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
