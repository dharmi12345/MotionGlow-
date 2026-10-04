import 'package:flutter/material.dart';
import '../../../core/theame/app_colores.dart';

class ProgressCircle extends StatelessWidget {
  final double value;
  final String text;
  final Color color;

  const ProgressCircle({
    super.key,
    required this.value,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: value,
            strokeWidth: 8,
            backgroundColor: AppColors.border,
            color: color,
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
