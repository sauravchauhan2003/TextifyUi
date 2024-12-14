import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Remove this or set it to true
        automaticallyImplyLeading: true,
        title: Center(child: Text("Settings")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Account"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.EditProfile);
            },
            child: Text("Edit Profile"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Security and Privacy"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Notifications"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Log out"),
          ),
        ],
      ),
    );
  }
}
