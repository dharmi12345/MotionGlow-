import 'package:flutter/material.dart';

import '../../core/theame/app_colores.dart';
import '../dashboard/widgets/bottom_nav_bar.dart';
import '../settings/settings_screen.dart';
import '../notification/notification_screen.dart';
import '../settings/help_screen.dart';
import '../settings/about_screen.dart';
import '../settings/security_screen.dart';
import 'personal_information_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget buildTile({
    required IconData icon,
    required String title,
    required String subtitle,
    Color color = AppColors.primary,
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: color.withValues(alpha: .12),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            /// Profile Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x08000000),
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  ),
                ],
              ),

              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Dharmi Khandhediya",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    "Administrator",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "18",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text("Devices"),
                        ],
                      ),

                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey.shade300,
                      ),

                      Column(
                        children: const [
                          Text(
                            "245",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text("kWh"),
                        ],
                      ),

                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey.shade300,
                      ),

                      Column(
                        children: const [
                          Text(
                            "98%",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text("Efficiency"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            buildTile(
              icon: Icons.person_outline,
              title: "Personal Information",
              subtitle: "View and update your profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PersonalInformationScreen(),
                  ),
                );
              },
            ),

            buildTile(
              icon: Icons.notifications_none,
              title: "Notifications",
              subtitle: "Manage notification settings",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const NotificationScreen()),
                );
              },
            ),

            buildTile(
              icon: Icons.security,
              title: "Security",
              subtitle: "Password & privacy",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SecurityScreen()),
                );
              },
            ),

            buildTile(
              icon: Icons.settings,
              title: "Settings",
              subtitle: "App preferences",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
            ),
            buildTile(
              icon: Icons.help_outline,
              title: "Help & Support",
              subtitle: "FAQs and Contact",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HelpScreen()),
                );
              },
            ),

            buildTile(
              icon: Icons.info_outline,
              title: "About MotionGlow",
              subtitle: "Version 1.0.0",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(currentIndex: 4),
    );
  }
}
