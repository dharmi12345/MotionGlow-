import 'package:flutter/material.dart';

class LightCard extends StatelessWidget {
  final String title;
  final String location;
  final bool isOn;
  final double brightness;
  final ValueChanged<bool> onSwitchChanged;
  final ValueChanged<double> onBrightnessChanged;

  const LightCard({
    super.key,
    required this.title,
    required this.location,
    required this.isOn,
    required this.brightness,
    required this.onSwitchChanged,
    required this.onBrightnessChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            /// Top Row
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isOn ? Colors.amber.shade100 : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.lightbulb,
                    color: isOn ? Colors.orange : Colors.grey,
                    size: 30,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                Switch(
                  value: isOn,
                  activeThumbColor: Colors.blue,
                  onChanged: onSwitchChanged,
                ),
              ],
            ),

            const SizedBox(height: 18),

            /// Brightness
            Row(
              children: [
                const Icon(Icons.brightness_6),

                const SizedBox(width: 8),

                const Text(
                  "Brightness",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),

                const Spacer(),

                Text(
                  "${brightness.toInt()}%",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Slider(
              value: brightness,
              min: 0,
              max: 100,
              activeColor: Colors.blue,
              onChanged: isOn ? onBrightnessChanged : null,
            ),

            const SizedBox(height: 8),

            /// Status
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 12,
                  color: isOn ? Colors.green : Colors.red,
                ),

                const SizedBox(width: 8),

                Text(
                  isOn ? "Light is ON" : "Light is OFF",
                  style: TextStyle(
                    color: isOn ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
