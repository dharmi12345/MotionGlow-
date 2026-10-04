import 'package:flutter/material.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  bool darkMode = false;
  bool followSystem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dark Mode"), centerTitle: true),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Appearance",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Card(
            child: SwitchListTile(
              title: const Text("Enable Dark Mode"),
              subtitle: const Text("Use dark theme throughout the application"),
              secondary: const Icon(Icons.dark_mode),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      value ? "Dark Mode Enabled" : "Dark Mode Disabled",
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 15),

          Card(
            child: SwitchListTile(
              title: const Text("Follow System Theme"),
              subtitle: const Text(
                "Automatically switch according to device settings",
              ),
              secondary: const Icon(Icons.phone_android),
              value: followSystem,
              onChanged: (value) {
                setState(() {
                  followSystem = value;
                });
              },
            ),
          ),

          const SizedBox(height: 30),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "About Dark Mode",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Dark Mode reduces eye strain in low-light conditions "
                    "and helps save battery life on OLED displays.",
                    style: TextStyle(height: 1.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
