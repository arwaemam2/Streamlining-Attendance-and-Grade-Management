
import 'package:flutter/material.dart';
import 'package:app/screens/profile.dart';
import 'package:app/student/studentsub.dart';
import 'package:app/student/yourprofile.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Menu'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              "Your Profile Name", // Update with your profile name
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Divider(color: Colors.blue, height: 1),
          buildListTile(context, Icons.home, 'Home', YourProfile()),
          SizedBox(height: 10),
          buildListTile(context, Icons.circle, 'Attendance', studentsub()),
          SizedBox(height: 10),
          buildListTile(context, Icons.settings, 'Settings', null),
        ],
      ),
    );
  }

  ListTile buildListTile(BuildContext context, IconData icon, String title, Widget? page) {
    return ListTile(
      onTap: page != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            }
          : null,
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IconsScreen(),
    );
  }
}


