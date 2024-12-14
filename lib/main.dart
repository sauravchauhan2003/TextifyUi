import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';
import 'package:textify/pages/ChatScreen.dart';
import 'package:textify/pages/EditProfile.dart';
import 'package:textify/pages/LogIn.dart';
import 'package:textify/pages/MessagesPage.dart';
import 'package:textify/pages/SignUp.dart';
import 'package:textify/pages/Welcome.dart';
import 'package:textify/pages/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        Routes.Signup: (context) => const Signup(),
        Routes.Signin: (context) => const SignIn(),
        Routes.MessagesPages: (context) => const MessagesPage(),
        Routes.ChatScreen: (context) => const ChatScreen(),
        Routes.SettingsPage: (context) => const SettingsPage(),
        Routes.EditProfile: (context) => EditProfile()
      },
    );
  }
}
