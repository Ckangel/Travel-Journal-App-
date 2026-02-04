import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> entries = ["Trip to Accra", "Beach Day", "Mountain Hike"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Travel Journal")),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(entries[index]),
            onTap: () {
              Navigator.pushNamed(context, '/view');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
    );
  }
}
