import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';

class MessagePreview extends StatelessWidget {
  const MessagePreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.grey,
      height: 75,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30, // Placeholder color
            child: Icon(Icons.person, color: Colors.white), // Placeholder icon
          ),
          const SizedBox(width: 10), // Space between avatar and text
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.ChatScreen);
              },
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to start
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center text vertically
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
