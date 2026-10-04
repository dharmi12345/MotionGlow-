import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/google_button.dart';
import '../../../core/widgets/logo_widgets.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../features/dashboard/dashboard_screen.dart';

import 'widgets/forgot_password.dart';
import 'widgets/remember_me.dart';

// Import your dashboard screen here
// import '../../dashboard/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberMe = false;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              const LogoWidget(),

              const SizedBox(height: 45),

              CustomTextField(
                controller: emailController,
                hintText: "Email ID",
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 18),

              CustomTextField(
                controller: passwordController,
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                obscureText: hidePassword,

                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  icon: Icon(
                    hidePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  RememberMe(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                  ),

                  const Spacer(),

                  ForgotPassword(onTap: () {}),
                ],
              ),

              const SizedBox(height: 18),

              PrimaryButton(
                title: "Sign In",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),

              const Row(
                children: [
                  Expanded(child: Divider()),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("OR"),
                  ),

                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 25),

              GoogleButton(onPressed: () {}),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
