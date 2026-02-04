import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_entry_screen.dart';
import 'screens/view_entry_screen.dart';

void main() {
  runApp(TravelJournalApp());
}

class TravelJournalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Journal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        '/add': (context) => AddEntryScreen(),
        '/view': (context) => ViewEntryScreen(),
      },
    );
  }
}
