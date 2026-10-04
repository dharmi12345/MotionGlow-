import 'package:flutter/material.dart';
import '../../core/theame/app_colores.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget paragraph(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(fontSize: 15, height: 1.7),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Terms & Conditions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: AppColors.primary.withValues(alpha: .10),
                child: const Icon(
                  Icons.description_outlined,
                  color: AppColors.primary,
                  size: 48,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Terms of Use",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 30),

            sectionTitle("1. Acceptance"),

            paragraph(
              "By using MotionGlow, you agree to follow these Terms & Conditions. If you do not agree, please discontinue using the application.",
            ),

            sectionTitle("2. User Responsibilities"),

            paragraph(
              "Users must use the application responsibly and only for monitoring and controlling authorized smart street lighting systems.",
            ),

            sectionTitle("3. Account Security"),

            paragraph(
              "You are responsible for maintaining the confidentiality of your login credentials. Never share your account password with others.",
            ),

            sectionTitle("4. Data Accuracy"),

            paragraph(
              "MotionGlow displays information received from connected IoT devices. We strive to provide accurate information but cannot guarantee uninterrupted service.",
            ),

            sectionTitle("5. System Availability"),

            paragraph(
              "The application may occasionally undergo maintenance or updates. During these periods, some features may be temporarily unavailable.",
            ),

            sectionTitle("6. Intellectual Property"),

            paragraph(
              "All application designs, logos, source code, and content belong to the MotionGlow development team and may not be copied without permission.",
            ),

            sectionTitle("7. Limitation of Liability"),

            paragraph(
              "MotionGlow is not responsible for losses caused by hardware failures, network interruptions, or misuse of the application.",
            ),

            sectionTitle("8. Updates"),

            paragraph(
              "These Terms & Conditions may be updated periodically. Continued use of the application indicates acceptance of the latest version.",
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: .08),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: AppColors.primary),

                  SizedBox(width: 12),

                  Expanded(
                    child: Text(
                      "By continuing to use MotionGlow, you acknowledge that you have read and accepted these Terms & Conditions.",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.check_circle_outline),
              label: const Text("I Agree"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
