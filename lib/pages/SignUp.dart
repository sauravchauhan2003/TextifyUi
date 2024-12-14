import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textify"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Create an account",
                style: TextStyle(fontSize: 25),
              )),
              Text(" Email"),
              SizedBox(height: 5),
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
              Text(" Password"),
              SizedBox(height: 5),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: const Color(0xFFe7ebee),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ))),
              SizedBox(height: 10),
              Text(" Confirm Password"),
              SizedBox(height: 5),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      filled: true,
                      fillColor: const Color(0xFFe7ebee),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ))),
              SizedBox(height: 30),
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
                      child: Center(
                        child: const Text(
                          "Create Account",
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
