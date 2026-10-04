import 'package:flutter/material.dart';

import '../../core/theame/app_colores.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  final TextEditingController nameController = TextEditingController(
    text: "Dharmi Khandhediya",
  );

  final TextEditingController emailController = TextEditingController(
    text: "dharmi@example.com",
  );

  final TextEditingController phoneController = TextEditingController(
    text: "+91 9876543210",
  );

  final TextEditingController addressController = TextEditingController(
    text: "Bhavnagar, Gujarat",
  );

  Widget buildField({
    required String label,
    required IconData icon,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Personal Information",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.person, size: 55, color: Colors.white),
            ),

            const SizedBox(height: 16),

            TextButton.icon(
              onPressed: () {
                // Upload Profile Picture
              },
              icon: const Icon(Icons.camera_alt_outlined),
              label: const Text("Change Photo"),
            ),

            const SizedBox(height: 30),

            buildField(
              label: "Full Name",
              icon: Icons.person_outline,
              controller: nameController,
            ),

            buildField(
              label: "Email",
              icon: Icons.email_outlined,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),

            buildField(
              label: "Phone Number",
              icon: Icons.phone_outlined,
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),

            buildField(
              label: "Address",
              icon: Icons.location_on_outlined,
              controller: addressController,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Profile Updated Successfully"),
                    ),
                  );
                },
                icon: const Icon(Icons.save),
                label: const Text("Save Changes"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
