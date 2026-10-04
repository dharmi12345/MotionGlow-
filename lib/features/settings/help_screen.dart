import 'package:flutter/material.dart';
import '../../core/theame/app_colores.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  Widget supportTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withValues(alpha: .10),
          child: Icon(icon, color: AppColors.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Help & Support",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: .10),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Column(
                children: [
                  Icon(Icons.support_agent, color: AppColors.primary, size: 70),

                  SizedBox(height: 15),

                  Text(
                    "Need Help?",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "We're here to help you with any questions regarding MotionGlow.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Support Options",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            supportTile(
              icon: Icons.email_outlined,
              title: "Email Support",
              subtitle: "support@motionglow.com",
            ),

            supportTile(
              icon: Icons.phone_outlined,
              title: "Phone Support",
              subtitle: "+91 98765 43210",
            ),

            supportTile(
              icon: Icons.chat_outlined,
              title: "Live Chat",
              subtitle: "Available 9:00 AM - 6:00 PM",
            ),

            supportTile(
              icon: Icons.help_outline,
              title: "Frequently Asked Questions",
              subtitle: "Find answers to common questions",
            ),

            const SizedBox(height: 25),

            const Text(
              "Frequently Asked Questions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            ExpansionTile(
              title: const Text("How does MotionGlow work?"),
              children: const [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "MotionGlow automatically controls street lights using motion detection sensors. Lights turn ON when movement is detected and turn OFF when no motion is present, helping save electricity.",
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text("How can I report a problem?"),
              children: const [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "You can contact our support team through email or phone listed above.",
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text("How often is data updated?"),
              children: const [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Device status and analytics are updated in real-time whenever the ESP32 sends new data.",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.email),
              label: const Text("Contact Support"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
