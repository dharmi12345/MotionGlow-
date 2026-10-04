import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
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
          //----------------------------------------------------
          // Title
          //----------------------------------------------------
          Row(
            children: const [
              Icon(Icons.analytics_outlined, color: AppColors.primary),

              SizedBox(width: 10),

              Text(
                "Energy Analytics",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 28),

          //----------------------------------------------------
          // Main Value
          //----------------------------------------------------
          const Text(
            "6.8 kWh",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          const Text(
            "Energy saved today",
            style: TextStyle(color: AppColors.textSecondary),
          ),

          const SizedBox(height: 28),

          //----------------------------------------------------
          // Fake Chart
          //----------------------------------------------------
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _Bar(height: 42),
              _Bar(height: 58),
              _Bar(height: 32),
              _Bar(height: 78),
              _Bar(height: 64),
              _Bar(height: 92),
              _Bar(height: 70),
            ],
          ),

          const SizedBox(height: 14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("M"),
              Text("T"),
              Text("W"),
              Text("T"),
              Text("F"),
              Text("S"),
              Text("S"),
            ],
          ),

          const SizedBox(height: 28),

          Divider(),

          const SizedBox(height: 20),

          //----------------------------------------------------
          // Bottom Stats
          //----------------------------------------------------
          Row(
            children: const [
              Expanded(
                child: _MiniStat(title: "Efficiency", value: "91%"),
              ),

              Expanded(
                child: _MiniStat(title: "CO₂ Saved", value: "14kg"),
              ),

              Expanded(
                child: _MiniStat(title: "Devices", value: "32"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  final double height;

  const _Bar({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: height,

      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final String title;
  final String value;

  const _MiniStat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        Text(title, style: const TextStyle(color: AppColors.textSecondary)),
      ],
    );
  }
}
