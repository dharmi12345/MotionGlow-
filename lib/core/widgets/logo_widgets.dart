import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double logoSize;

  const LogoWidget({super.key, this.logoSize = 110});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: logoSize,
          height: logoSize,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 18),

        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Motion",
                style: TextStyle(
                  color: Color(0xff2962FF),
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Glow",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          "Smart Lighting. Smarter Future.",
          style: TextStyle(fontSize: 14, color: Colors.grey, letterSpacing: .2),
        ),
      ],
    );
  }
}
