import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //----------------------------------------------------------
          // Title
          //----------------------------------------------------------
          Row(
            children: const [
              Icon(Icons.dashboard_customize_rounded, color: AppColors.primary),
              SizedBox(width: 10),
              Text(
                "Today's Overview",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 28),

          //----------------------------------------------------------
          // Row 1
          //----------------------------------------------------------
          Row(
            children: const [
              Expanded(
                child: _OverviewItem(
                  icon: Icons.bolt_rounded,
                  value: "68%",
                  title: "Energy Saved",
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: _OverviewItem(
                  icon: Icons.lightbulb_outline_rounded,
                  value: "32",
                  title: "Lights Active",
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          //----------------------------------------------------------
          // Row 2
          //----------------------------------------------------------
          Row(
            children: const [
              Expanded(
                child: _OverviewItem(
                  icon: Icons.thermostat_rounded,
                  value: "24°C",
                  title: "Weather",
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: _OverviewItem(
                  icon: Icons.motion_photos_on_rounded,
                  value: "Active",
                  title: "Motion Sensor",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OverviewItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;

  const _OverviewItem({
    required this.icon,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xffF7F8FA),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: .08),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: AppColors.primary),
          ),

          const SizedBox(height: 18),

          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
