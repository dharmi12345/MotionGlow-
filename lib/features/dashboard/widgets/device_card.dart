import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class DeviceCard extends StatefulWidget {
  final String name;
  final bool online;

  const DeviceCard({super.key, required this.name, required this.online});

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  bool power = true;
  double brightness = 84;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: const EdgeInsets.only(right: 18),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),

        border: Border.all(color: AppColors.border),

        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          //---------------------------------------------------
          // Top
          //---------------------------------------------------
          Row(
            children: [
              Container(
                height: 56,
                width: 56,

                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(18),
                ),

                child: const Icon(
                  Icons.lightbulb_outline_rounded,
                  color: AppColors.primary,
                  size: 30,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: widget.online
                              ? Colors.green
                              : Colors.red,
                        ),

                        const SizedBox(width: 8),

                        Text(
                          widget.online ? "Online" : "Offline",

                          style: TextStyle(
                            color: widget.online ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Switch(
                value: power,

                activeThumbColor: AppColors.primary,

                onChanged: (v) {
                  setState(() {
                    power = v;
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: 24),

          //---------------------------------------------------
          // Brightness
          //---------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Brightness",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),

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

            activeColor: AppColors.primary,

            onChanged: (value) {
              setState(() {
                brightness = value;
              });
            },
          ),

          const SizedBox(height: 8),

          //---------------------------------------------------
          // Bottom Chips
          //---------------------------------------------------
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),

                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: .08),

                  borderRadius: BorderRadius.circular(30),
                ),

                child: const Text(
                  "AUTO MODE",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),

                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: .08),

                  borderRadius: BorderRadius.circular(30),
                ),

                child: const Text(
                  "Healthy",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
