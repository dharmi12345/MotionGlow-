import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final VoidCallback onTap;

  const ForgotPassword({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: const Text(
        "Forgot Password?",
        style: TextStyle(color: Color(0xff2962FF), fontWeight: FontWeight.w600),
      ),
    );
  }
}
