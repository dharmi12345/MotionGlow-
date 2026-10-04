import 'package:flutter/material.dart';

import '../../core/theame/app_colores.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool biometric = true;
  bool twoFactor = false;
  bool rememberDevice = true;

  Widget buildTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget trailing,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withValues(alpha: 0.12),
          child: Icon(icon, color: AppColors.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: trailing,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Security",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          buildTile(
            icon: Icons.fingerprint,
            title: "Biometric Authentication",
            subtitle: "Use fingerprint or face unlock",
            trailing: Switch(
              value: biometric,
              onChanged: (value) {
                setState(() {
                  biometric = value;
                });
              },
            ),
          ),

          buildTile(
            icon: Icons.verified_user_outlined,
            title: "Two-Factor Authentication",
            subtitle: "Extra protection for your account",
            trailing: Switch(
              value: twoFactor,
              onChanged: (value) {
                setState(() {
                  twoFactor = value;
                });
              },
            ),
          ),

          buildTile(
            icon: Icons.devices_outlined,
            title: "Remember this Device",
            subtitle: "Skip verification on this device",
            trailing: Switch(
              value: rememberDevice,
              onChanged: (value) {
                setState(() {
                  rememberDevice = value;
                });
              },
            ),
          ),

          const SizedBox(height: 25),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red.withValues(alpha: 0.12),
                child: const Icon(Icons.lock_reset, color: Colors.red),
              ),
              title: const Text(
                "Change Password",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text("Update your account password"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                // Navigate to Change Password Screen
              },
            ),
          ),

          const SizedBox(height: 15),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.withValues(alpha: 0.12),
                child: const Icon(Icons.history, color: Colors.orange),
              ),
              title: const Text(
                "Login Activity",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text("View recent login history"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 15),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red.withValues(alpha: 0.12),
                child: const Icon(Icons.logout, color: Colors.red),
              ),
              title: const Text(
                "Logout from All Devices",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text("Sign out from every logged in device"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
