import 'package:flutter/material.dart';
import 'package:motionglow/features/profile/profile_screen.dart';

import '../../core/theame/app_colores.dart';

import 'widgets/activity_card.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/dashboard_header.dart';
import 'widgets/device_card.dart';
import 'widgets/energy_summary_card.dart';
import 'widgets/overview_card.dart';
import 'widgets/quick_action_button.dart';
import 'widgets/status_banner.dart';
import 'widgets/analytics_card.dart';
import 'widgets/weather_card.dart';
import '../lights/lights_screen.dart';
import '../analytics/analytics_screen.dart';
import '../location/location_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        icon: const Icon(Icons.add_rounded),
        label: const Text(
          "Add Device",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              //----------------------------------------------------
              // Header
              //----------------------------------------------------
              const DashboardHeader(),

              const SizedBox(height: 24),

              //----------------------------------------------------
              // Status
              //----------------------------------------------------
              const StatusBanner(),

              const SizedBox(height: 20),

              //----------------------------------------------------
              // Energy Summary
              //----------------------------------------------------
              const EnergySummaryCard(),

              const SizedBox(height: 24),

              //----------------------------------------------------
              // Today's Overview
              //----------------------------------------------------
              const OverviewCard(),

              const SizedBox(height: 24),

              const AnalyticsCard(),
              const SizedBox(height: 24),

              const WeatherCard(),

              const SizedBox(height: 36),

              //----------------------------------------------------
              // Quick Controls
              //----------------------------------------------------
              const Text(
                "Quick Controls",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 18),

              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.25,
                children: [
                  QuickActionButton(
                    icon: Icons.lightbulb_outline_rounded,
                    text: "Lights",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LightsScreen()),
                      );
                    },
                  ),

                  QuickActionButton(
                    icon: Icons.analytics_outlined,
                    text: "Analytics",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AnalyticsScreen(),
                        ),
                      );
                    },
                  ),

                  QuickActionButton(
                    icon: Icons.location_on_outlined,
                    text: "Location",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LocationScreen(),
                        ),
                      );
                    },
                  ),
                  QuickActionButton(
                    icon: Icons.location_on_outlined,
                    text: "Location",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ProfileScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 36),

              //----------------------------------------------------
              // Connected Devices
              //----------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Connected Devices",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  TextButton(onPressed: () {}, child: const Text("View All")),
                ],
              ),

              const SizedBox(height: 18),

              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    DeviceCard(name: "Street Light 01", online: true),
                    DeviceCard(name: "Street Light 02", online: true),
                    DeviceCard(name: "Street Light 03", online: false),
                  ],
                ),
              ),

              const SizedBox(height: 36),

              //----------------------------------------------------
              // Recent Activity
              //----------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Activity",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  TextButton(onPressed: () {}, child: const Text("History")),
                ],
              ),

              const SizedBox(height: 16),

              const ActivityCard(
                icon: Icons.directions_car_rounded,
                title: "Vehicle Detected",
                location: "Street Light 02",
                time: "2 min",
              ),

              const ActivityCard(
                icon: Icons.person_rounded,
                title: "Pedestrian Detected",
                location: "Street Light 04",
                time: "5 min",
              ),

              const ActivityCard(
                icon: Icons.power_settings_new_rounded,
                title: "Light Turned OFF",
                location: "Street Light 07",
                time: "15 min",
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
