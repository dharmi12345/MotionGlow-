import 'package:flutter/material.dart';

import 'widgets/energy_chart.dart';
import 'widgets/stat_card.dart';
import 'widgets/usage_tile.dart';
import '../dashboard/widgets/bottom_nav_bar.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Analytics",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Energy Overview",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 18),

            Row(
              children: const [
                StatCard(
                  icon: Icons.bolt,
                  title: "Energy Used",
                  value: "245 kWh",
                  color: Colors.orange,
                ),

                SizedBox(width: 16),

                StatCard(
                  icon: Icons.eco,
                  title: "Energy Saved",
                  value: "36 kWh",
                  color: Colors.green,
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: const [
                StatCard(
                  icon: Icons.lightbulb,
                  title: "Active Lights",
                  value: "18",
                  color: Colors.blue,
                ),

                SizedBox(width: 16),

                StatCard(
                  icon: Icons.power,
                  title: "Offline",
                  value: "02",
                  color: Colors.red,
                ),
              ],
            ),

            const SizedBox(height: 30),

            const EnergyChart(),

            const SizedBox(height: 30),

            const Text(
              "Recent Usage",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 18),

            const UsageTile(
              deviceName: "Street Light 01",
              location: "Main Entrance",
              energy: 2.4,
              isActive: true,
            ),

            const UsageTile(
              deviceName: "Garden Light",
              location: "Garden Area",
              energy: 1.2,
              isActive: false,
            ),

            const UsageTile(
              deviceName: "Parking Light",
              location: "Parking Zone",
              energy: 3.6,
              isActive: true,
            ),

            const UsageTile(
              deviceName: "Hallway Light",
              location: "Building Hallway",
              energy: 2.1,
              isActive: true,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }
}
