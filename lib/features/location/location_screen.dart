import 'package:flutter/material.dart';

import 'widgets/location_tile.dart';
import '../dashboard/widgets/bottom_nav_bar.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Street Light Locations",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Current Location
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x08000000),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),

              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.location_on, color: Colors.white),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Bhavnagar, Gujarat",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Fake Map
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(22),
              ),

              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      Icons.map,
                      size: 120,
                      color: Colors.blue.shade100,
                    ),
                  ),

                  const Positioned(
                    top: 60,
                    left: 70,
                    child: Icon(Icons.location_on, color: Colors.red, size: 36),
                  ),

                  const Positioned(
                    top: 140,
                    right: 90,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 36,
                    ),
                  ),

                  const Positioned(
                    bottom: 50,
                    left: 150,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.orange,
                      size: 36,
                    ),
                  ),

                  const Center(
                    child: Text(
                      "Google Maps Coming Soon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Nearby Street Lights",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 18),

            const LocationTile(
              lightName: "Street Light 01",
              address: "Main Road",
              isOnline: true,
            ),

            const LocationTile(
              lightName: "Street Light 02",
              address: "Garden Area",
              isOnline: true,
            ),

            const LocationTile(
              lightName: "Street Light 03",
              address: "Parking Zone",
              isOnline: false,
            ),

            const LocationTile(
              lightName: "Street Light 04",
              address: "College Road",
              isOnline: true,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
    );
  }
}
