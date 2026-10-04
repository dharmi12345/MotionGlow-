import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/theme_provider.dart';
import '../../core/theame/app_colores.dart';

import 'notification_settings_screen.dart';
import 'language_screen.dart';
import 'privacy_policy_screen.dart';
import 'terms_screen.dart';
import 'help_screen.dart';
import 'about_screen.dart';
import 'edit_profile_screen.dart';
import 'change_password_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool autoMode = true;

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget tile({
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withValues(alpha: 0.10),
          child: Icon(icon, color: AppColors.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: subtitle == null ? null : Text(subtitle),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(title: const Text("Settings")),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          sectionTitle("General"),

          //------------------------------------
          // Dark Mode
          //------------------------------------
          tile(
            icon: Icons.dark_mode_outlined,
            title: "Dark Mode",
            subtitle: "Enable Dark Theme",
            trailing: Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
            ),
          ),

          //------------------------------------
          // Notification
          //------------------------------------
          tile(
            icon: Icons.notifications_outlined,
            title: "Notification Settings",
            subtitle: "Manage app notifications",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const NotificationSettingsScreen(),
                ),
              );
            },
          ),

          //------------------------------------
          // Auto Update
          //------------------------------------
          tile(
            icon: Icons.system_update_alt,
            title: "Auto Update",
            subtitle: "Update firmware automatically",
            trailing: Switch(
              value: autoMode,
              onChanged: (value) {
                setState(() {
                  autoMode = value;
                });
              },
            ),
          ),

          //------------------------------------
          // Language
          //------------------------------------
          tile(
            icon: Icons.language,
            title: "Language",
            subtitle: "English",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LanguageScreen()),
              );
            },
          ),

          sectionTitle("Account"),

          tile(
            icon: Icons.person_outline,
            title: "Edit Profile",
            subtitle: "Update your personal details",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EditProfileScreen()),
              );
            },
          ),

          tile(
            icon: Icons.privacy_tip_outlined,
            title: "Privacy Policy",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()),
              );
            },
          ),

          tile(
            icon: Icons.description_outlined,
            title: "Terms & Conditions",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TermsScreen()),
              );
            },
          ),

          tile(
            icon: Icons.lock_outline,
            title: "Change Password",
            subtitle: "Update your login password",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ChangePasswordScreen()),
              );
            },
          ),

          sectionTitle("About"),

          tile(
            icon: Icons.info_outline,
            title: "About App",
            subtitle: "Version 1.0.0",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),

          tile(
            icon: Icons.help_outline,
            title: "Help & Support",
            subtitle: "Contact our support team",
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HelpScreen()),
              );
            },
          ),

          const SizedBox(height: 30),

          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            icon: const Icon(Icons.logout),
            label: const Text("Logout"),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
