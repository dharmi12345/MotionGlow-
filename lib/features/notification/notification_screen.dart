import 'package:flutter/material.dart';

import '../dashboard/widgets/bottom_nav_bar.dart';
import 'widgets/notification_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(onPressed: () {}, child: const Text("Mark all read")),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          /// TODAY
          const Text(
            "Today",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 18),

          Dismissible(
            key: const ValueKey("1"),
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {},
            child: const NotificationTile(
              icon: Icons.directions_walk,
              iconColor: Colors.blue,
              title: "Motion Detected",
              subtitle: "Street Light 04 detected movement.",
              time: "2 min ago",
              unread: true,
            ),
          ),

          Dismissible(
            key: const ValueKey("2"),
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {},
            child: const NotificationTile(
              icon: Icons.power_off,
              iconColor: Colors.red,
              title: "Power Failure",
              subtitle: "Street Light 07 is offline.",
              time: "15 min ago",
            ),
          ),

          Dismissible(
            key: const ValueKey("3"),
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {},
            child: const NotificationTile(
              icon: Icons.lightbulb,
              iconColor: Colors.orange,
              title: "Light Turned ON",
              subtitle: "Street Light 01 switched ON automatically.",
              time: "30 min ago",
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            "Yesterday",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 18),

          const NotificationTile(
            icon: Icons.warning_amber_rounded,
            iconColor: Colors.amber,
            title: "Low Battery",
            subtitle: "Controller Unit 03 battery is low.",
            time: "Yesterday • 4:20 PM",
          ),

          const NotificationTile(
            icon: Icons.build,
            iconColor: Colors.green,
            title: "Maintenance Required",
            subtitle: "Street Light 09 requires inspection.",
            time: "Yesterday • 10:30 AM",
          ),

          const NotificationTile(
            icon: Icons.cloud_done,
            iconColor: Colors.indigo,
            title: "Firmware Updated",
            subtitle: "All controllers updated successfully.",
            time: "Yesterday • 9:15 AM",
          ),

          const SizedBox(height: 20),
        ],
      ),

      bottomNavigationBar: const BottomNavBar(currentIndex: 4),
    );
  }
}
