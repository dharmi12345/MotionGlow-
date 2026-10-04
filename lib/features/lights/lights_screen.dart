import 'package:flutter/material.dart';

import 'widgets/light_card.dart';
import '../dashboard/widgets/bottom_nav_bar.dart';

class LightsScreen extends StatefulWidget {
  const LightsScreen({super.key});

  @override
  State<LightsScreen> createState() => _LightsScreenState();
}

class _LightsScreenState extends State<LightsScreen> {
  final List<Map<String, dynamic>> lights = [
    {
      "title": "Street Light",
      "location": "Main Entrance",
      "isOn": true,
      "brightness": 80.0,
    },
    {
      "title": "Garden Light",
      "location": "Garden Area",
      "isOn": false,
      "brightness": 35.0,
    },
    {
      "title": "Parking Light",
      "location": "Parking Zone",
      "isOn": true,
      "brightness": 70.0,
    },
    {
      "title": "Hallway Light",
      "location": "Building Hallway",
      "isOn": true,
      "brightness": 60.0,
    },
    {
      "title": "Security Light",
      "location": "Security Gate",
      "isOn": false,
      "brightness": 20.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Smart Lights",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: lights.length,
        itemBuilder: (context, index) {
          final light = lights[index];

          return LightCard(
            title: light["title"],
            location: light["location"],
            isOn: light["isOn"],
            brightness: light["brightness"],

            onSwitchChanged: (value) {
              setState(() {
                lights[index]["isOn"] = value;
              });
            },

            onBrightnessChanged: (value) {
              setState(() {
                lights[index]["brightness"] = value;
              });
            },
          );
        },
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
