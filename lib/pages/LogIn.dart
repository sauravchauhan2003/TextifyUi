import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "Sign in to your account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                " Email",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: const Color(0xFFe7ebee),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ))),
              SizedBox(height: 10),
              Text(
                " Password",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: const Color(0xFFe7ebee),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ))),
              SizedBox(
                height: 5,
              ),
              TextButton(onPressed: () {}, child: Text("Forgot Password?")),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.MessagesPages);
                },
                child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: const Color(
                        0xFF1a80e6), // Apply color directly to Material
                    clipBehavior:
                        Clip.antiAlias, // Enables rounded corners visually
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
