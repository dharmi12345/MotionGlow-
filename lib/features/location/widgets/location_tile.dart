import 'package:flutter/material.dart';

class LocationTile extends StatelessWidget {
  final String lightName;
  final String address;
  final bool isOnline;

  const LocationTile({
    super.key,
    required this.lightName,
    required this.address,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
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
          CircleAvatar(
            radius: 24,
            backgroundColor: isOnline
                ? Colors.green.shade100
                : Colors.red.shade100,
            child: Icon(
              Icons.lightbulb,
              color: isOnline ? Colors.green : Colors.red,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lightName,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),

                    const SizedBox(width: 4),

                    Expanded(
                      child: Text(
                        address,
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: isOnline ? Colors.green.shade100 : Colors.red.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              isOnline ? "Online" : "Offline",
              style: TextStyle(
                color: isOnline ? Colors.green.shade700 : Colors.red.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
