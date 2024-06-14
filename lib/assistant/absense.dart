import 'package:flutter/material.dart';

// void main() {
//   runApp(Absenceofsections());
// }

// class Absenceofsections extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Absence of sections',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AbsenceOfSections(),
//     );
//   }
// }

class AbsenceOfSections extends StatefulWidget {
  @override
  _AbsenceOfSectionsState createState() => _AbsenceOfSectionsState();
}

class _AbsenceOfSectionsState extends State<AbsenceOfSections> {
  List<String> items = [
    'week 1',
    'week 2',
    'week 3',
    'week 4',
    'week 5',
    'week 6',
    'week 7',
    'week 8',
    'week 9',
    'week 10',
    'week 11',
    'week 12',
    
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
              // Navigate back when the leading icon/button is pressed
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
        onPressed: (
          
        ) {
          // Handle action when FAB is pressed
          print('Checked items: $checkedItems');
        },
        child: Icon(Icons.check),
      ),
    );
  }
}