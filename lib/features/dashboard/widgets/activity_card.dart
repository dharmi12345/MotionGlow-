import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String location;
  final String time;

  const ActivityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.location,
    required this.time,
  });

  Color _iconColor() {
    if (icon == Icons.warning_amber_rounded) return Colors.orange;
    if (icon == Icons.power_settings_new_rounded) return Colors.red;
    if (icon == Icons.person_rounded) return Colors.blue;
    return AppColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //------------------------------------------------------
            // Icon
            //------------------------------------------------------
            Container(
              height: 56,
              width: 56,

              decoration: BoxDecoration(
                color: _iconColor().withValues(alpha: .08),
                borderRadius: BorderRadius.circular(18),
              ),

              child: Icon(icon, color: _iconColor(), size: 28),
            ),

            const SizedBox(width: 18),

            //------------------------------------------------------
            // Details
            //------------------------------------------------------
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        location,
                        style: const TextStyle(color: AppColors.textSecondary),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: .08),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Text(
                      "Completed",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //------------------------------------------------------
            // Time
            //------------------------------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Text(
                  time,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 40),

                const Icon(Icons.chevron_right_rounded, color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
