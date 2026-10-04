import 'package:flutter/material.dart';
import '../../core/theame/app_colores.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
      style: const TextStyle(fontSize: 15, height: 1.7),
      textAlign: TextAlign.justify,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Privacy Policy",
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
                  Icons.privacy_tip,
                  color: AppColors.primary,
                  size: 50,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Your Privacy Matters",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 30),

            sectionTitle("1. Information We Collect"),

            paragraph(
              "MotionGlow collects limited information such as device status, lighting data, user preferences, and application settings to provide a better user experience.",
            ),

            sectionTitle("2. How We Use Information"),

            paragraph(
              "The collected information is used to monitor smart street lights, improve system performance, display analytics, and provide real-time notifications.",
            ),

            sectionTitle("3. Data Security"),

            paragraph(
              "We use secure communication methods to protect your information. Only authorized users can access application data.",
            ),

            sectionTitle("4. Third-Party Services"),

            paragraph(
              "MotionGlow may use Firebase services for authentication, cloud storage, and database management. These services follow Google's privacy standards.",
            ),

            sectionTitle("5. User Rights"),

            paragraph(
              "Users may request modification or deletion of their personal information at any time by contacting the application administrator.",
            ),

            sectionTitle("6. Policy Updates"),

            paragraph(
              "Our privacy policy may change as new features are introduced. Updated policies will always be available within the application.",
            ),

            const SizedBox(height: 35),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: .08),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                children: [
                  Icon(Icons.verified_user, color: AppColors.primary),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Your data is encrypted and securely stored. MotionGlow never shares your personal information without your permission.",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.check_circle_outline),
              label: const Text("I Understand"),
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
