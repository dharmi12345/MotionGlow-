import 'package:flutter/material.dart';

import '../../../core/theame/app_colores.dart';

// Screens
import '../../analytics/analytics_screen.dart';
import '../../dashboard/dashboard_screen.dart';
import '../../lights/lights_screen.dart';
import '../../location/location_screen.dart';
import '../../profile/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.border),
          boxShadow: const [
            BoxShadow(
              color: Color(0x12000000),
              blurRadius: 25,
              offset: Offset(0, 12),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navItem(
              context,
              index: 0,
              icon: Icons.home_rounded,
              label: "Home",
            ),

            _navItem(
              context,
              index: 1,
              icon: Icons.lightbulb_outline_rounded,
              label: "Lights",
            ),

            _navItem(
              context,
              index: 2,
              icon: Icons.analytics_outlined,
              label: "Analytics",
            ),

            _navItem(context, index: 3, icon: Icons.map_outlined, label: "Map"),

            _navItem(
              context,
              index: 4,
              icon: Icons.person_outline_rounded,
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  Widget _navItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required String label,
  }) {
    final bool active = currentIndex == index;

    return GestureDetector(
      onTap: () {
        if (currentIndex == index) return;

        Widget? screen;

        switch (index) {
          case 0:
            screen = const DashboardScreen();
            break;

          case 1:
            screen = const LightsScreen();
            break;

          case 2:
            screen = const AnalyticsScreen();
            break;

          case 3:
            screen = const LocationScreen();
            break;

          case 4:
            screen = const ProfileScreen();
            break;
        }

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => screen!),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: active ? 16 : 0,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: active
              ? AppColors.primary.withValues(alpha: .10)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: active ? AppColors.primary : Colors.grey.shade600,
            ),

            if (active) ...[
              const SizedBox(width: 8),

              Text(
                label,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
