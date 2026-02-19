import 'dart:io';
import 'package:flutter/material.dart';

class DetailEntryScreen extends StatelessWidget {
  final Map<String, dynamic> entry;

  const DetailEntryScreen({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entry Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (entry['photoPath'] != null)
              Center(
                child: Image.file(
                  File(entry['photoPath']),
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 20),
            Text(
              entry['note'] ?? 'No note available',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Text(
              'Date: ${entry['createdAt']}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Text(
              'Location: (Lat: ${entry['latitude']}, Lng: ${entry['longitude']})',
               style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
