import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isPressed = false; // State to track button press

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                // Circle Avatar
                CircleAvatar(
                  child: const Icon(
                    Icons.person,
                    size: 100,
                  ),
                  radius: 100,
                  backgroundColor: Colors.grey,
                ),
                // Positioned Button with Visual Cue
                Positioned(
                  left: 130,
                  top: 150,
                  child: InkWell(
                    onTap: () {
                      print("Icon tapped!");
                      // Add your tap functionality here
                    },
                    onHighlightChanged: (value) {
                      setState(() {
                        _isPressed = value;
                      });
                    },
                    splashColor: Colors.blue.withOpacity(0.3), // Ripple effect
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isPressed
                            ? Colors.blue[700]
                            : const Color(0xFF268af5),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 40,
                ),
                const SizedBox(width: 10), // Space between icon and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    const Text(
                      "Your Name",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(), // Pushes the edit icon to the end
                const Icon(
                  Icons.edit,
                  size: 24,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.info,
                  size: 40,
                ),
                const SizedBox(width: 10), // Space between icon and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bio",
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                    const Text(
                      "Bio",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(), // Pushes the edit icon to the end
                const Icon(
                  Icons.edit,
                  size: 24,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
