import 'package:flutter/material.dart';

import '../../../core/theame/app_colores.dart';
import 'progress_circle.dart';

class EnergySummaryCard extends StatelessWidget {
  const EnergySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),

      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Energy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),

                Text(
                  "6.8 kWh Saved",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  "Compared to yesterday +12%",
                  style: TextStyle(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),

          const ProgressCircle(value: .68, text: "68%", color: Colors.green),
        ],
      ),
    );
  }
}
