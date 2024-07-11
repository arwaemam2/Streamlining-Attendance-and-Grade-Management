import 'package:app/assistant/sections.dart';
import 'package:flutter/material.dart';

class subjects extends StatelessWidget {
  const subjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Available Courses'),
        ),
        backgroundColor: Colors.grey[300],
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 100,
            width: 200,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
           
            child:  GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return sections();
                    },
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Course1',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ),
          SizedBox(height: 60,),
          Container(
            height: 100,
            width: 200,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
           
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return sections();
                    },
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Course2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ),
        ]))
        );
  }
}