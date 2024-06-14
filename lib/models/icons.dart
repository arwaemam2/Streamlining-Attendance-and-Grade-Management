import 'package:app/screens/profile.dart';
import 'package:app/student/audience.dart';
import 'package:app/student/qrcode2.dart';
import 'package:app/student/studentsub.dart';
import 'package:app/student/yourprofile.dart';
import 'package:flutter/material.dart';

class icons extends StatelessWidget {
  const icons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Divider(
        color: Colors.white24,
        height: 1,
      ),
    ),
    
        ListTile(
          onTap: () {
            
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return yourprofile();
                },
              ),
            );
          },
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Divider(
        color: Colors.white24,
        height: 1,
      ),
    
    
        ListTile(
          onTap: () {
            
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              Icons.qr_code,
              size: 30,
              color: Colors.white,
            ),
          ),

          title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Qrcode();
                },
              ),
            );
          },
            child: Text(
              'QR Code',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
         Divider(
        color: Colors.white24,
        height: 1,
      ),
       ListTile(
          onTap: () {
            
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              Icons.square,
              size: 30,
              color: Colors.white,
            ),
          ),

          title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return theaudience();
                },
              ),
            );
          },
            child: Text(
              'the audience',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
         Divider(
        color: Colors.white24,
        height: 1,
      ),
        ListTile(
          onTap: () {
            
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              Icons.circle,
              size: 30,
              color: Colors.white,
            ),
          ),
           title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return studentsub();
                },
              ),
            );
          },
            child: Text(
              'Attendans',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
         Divider(
        color: Colors.white24,
        height: 1,
      ),
     
         Divider(
        color: Colors.white24,
        height: 1,
      ),
    
        ListTile(
          onTap: () {
            
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
