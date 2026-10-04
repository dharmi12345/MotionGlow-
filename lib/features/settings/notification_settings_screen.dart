import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool pushNotification = true;
  bool emailNotification = false;
  bool sound = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification Settings")),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text("Push Notifications"),
            value: pushNotification,
            onChanged: (value) {
              setState(() {
                pushNotification = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Email Notifications"),
            value: emailNotification,
            onChanged: (value) {
              setState(() {
                emailNotification = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Notification Sound"),
            value: sound,
            onChanged: (value) {
              setState(() {
                sound = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
