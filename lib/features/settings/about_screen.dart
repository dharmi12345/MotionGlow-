import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About MotionGlow"), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange.shade100,
              child: const Icon(
                Icons.lightbulb,
                size: 55,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "MotionGlow",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 6),

            const Text(
              "Version 1.0.0",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 30),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "MotionGlow is an intelligent street lighting management application that helps monitor and control smart street lights using IoT technology. It provides real-time monitoring, automatic lighting, energy analytics, notifications, and system management for smart cities.",
                  style: TextStyle(fontSize: 16, height: 1.6),
                ),
              ),
            ),

            const SizedBox(height: 25),

            ListTile(
              leading: const Icon(Icons.business),
              title: const Text("Developer"),
              subtitle: const Text("MotionGlow Development Team"),
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              subtitle: const Text("support@motionglow.com"),
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.language),
              title: const Text("Website"),
              subtitle: const Text("www.motionglow.com"),
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.copyright),
              title: const Text("Copyright"),
              subtitle: const Text("© 2026 MotionGlow. All Rights Reserved."),
            ),

            const SizedBox(height: 30),

            const Text(
              "Thank you for using MotionGlow!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
