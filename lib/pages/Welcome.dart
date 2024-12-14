import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center content horizontally
          children: [
            Center(
              child: Text(
                "Textify",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 30), // Use SizedBox for spacing
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.Signin);
              },
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color:
                    const Color(0xFF414bb2), // Apply color directly to Material
                clipBehavior:
                    Clip.antiAlias, // Enables rounded corners visually
                child: Container(
                  height: 60,
                  width: 250,
                  child: const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.Signup);
              },
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color:
                    const Color(0xFF414bb2), // Apply color directly to Material
                clipBehavior:
                    Clip.antiAlias, // Enables rounded corners visually
                child: Container(
                  height: 60,
                  width: 250,
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
