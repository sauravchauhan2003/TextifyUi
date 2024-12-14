import 'package:flutter/material.dart';
import 'package:textify/logic/Routes.dart';
import 'package:textify/widgets/MessagePreview.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu), // Drawer menu icon
            onPressed: () =>
                Scaffold.of(context).openDrawer(), // Open the drawer
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text("Messages"),
        centerTitle: true,
      ),
      drawer: Drawer(
        // Adding a Drawer widget
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(
                    context, Routes.SettingsPage); // Handle navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Light grey background
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search chat',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MessagePreview();
              },
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
