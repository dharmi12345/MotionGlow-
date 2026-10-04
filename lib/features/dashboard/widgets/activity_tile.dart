import 'package:flutter/material.dart';

import '../../../core/theame/app_colores.dart';

class ActivityTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const ActivityTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Container(
        height: 12,
        width: 12,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
      ),

      title: Text(title),

      subtitle: Text(subtitle),

      trailing: Text(
        time,
        style: const TextStyle(color: AppColors.textSecondary),
      ),
    );
  }
}
