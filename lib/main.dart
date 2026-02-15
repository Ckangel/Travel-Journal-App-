import 'package:flutter/material.dart';
import 'screens/add_entry_screen.dart';
import 'screens/view_entries_screen.dart';
import 'screens/detail_entry_screen.dart';

void main() {
  runApp(TravelJournalApp());
}

class TravelJournalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Journal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ViewEntriesScreen(),   // Home screen
        '/add': (context) => AddEntryScreen(),   // Add new entry
      },
      // For DetailEntryScreen, we’ll use onGenerateRoute to pass entry data
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final entry = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (_) => DetailEntryScreen(entry: entry),
          );
        }
        return null;
      },
    );
  }
}
