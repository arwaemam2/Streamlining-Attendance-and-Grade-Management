import 'package:flutter/material.dart';

import 'studentsub.dart';

// void main() {
//   runApp(attendance());
// }

// class attendance extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Attendance List ',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CheckboxListExample(),
//     );
//   }
// }

class attendance extends StatefulWidget {
  @override
  _attendanceState createState() => _attendanceState();
}

class _attendanceState extends State<attendance> {
  List<String> items = [
    'sec 1',
    'sec 2',
    'sec 3',
    'sec 4',
    'sec 5',
    'sec 6',
    'sec 7',
    'sec 8',
    'sec 9',
    'sec 10',
    'sec 11',
    'sec 12',
    // Add more items as needed
  ];

  Map<String, bool> checkedItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CheckboxListTile(
            title: Text(item),
            value: checkedItems[item] ?? false,
            onChanged: (bool? value) {
              setState(() {
                checkedItems[item] = value ?? false;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle action when FAB is pressed
          print('Checked items: $checkedItems');
        },
        child: Icon(Icons.check),
      ),
    );
  }
}