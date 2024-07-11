import 'package:flutter/material.dart';


class attendancePage extends StatefulWidget {
@override
 _MyDynamicTableState createState() => _MyDynamicTableState();
}

class _MyDynamicTableState extends State<attendancePage> {List<List<String>> _data = [
 ['ID', 'Name', 'Absence Status'],
 // ['1', 'arwa', '2'],
];
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 // appBar: AppBar(),
 appBar: AppBar(

title: Text('Attendance List'),

 leading: IconButton(
 icon: Icon(Icons.arrow_back),
onPressed: () {
 // Navigate back when the leading icon/button is pressed
 Navigator.pop(context);
},),

 ),

body: SingleChildScrollView(
child: Table(
 border: TableBorder.all(),
 columnWidths: {
 0: FixedColumnWidth(100),
1: FlexColumnWidth(),
 2: FlexColumnWidth(),
},
children: _data.map((row) {
 return TableRow(
 children: row.map((cell) {
 return TableCell(
 child: Padding(
 padding: const EdgeInsets.all(8.0),
 child: Text(cell),
 ),
);
 }).toList(),
 );
 }).toList(),
 ),
 ),
 floatingActionButton: FloatingActionButton(
 onPressed: () {
 // Add new row
 setState(() {
 _data.add(['New ID', 'New Name', 'New Absence Status']);
 });
 },
 child: Icon(Icons.add),
),
);
 }
}