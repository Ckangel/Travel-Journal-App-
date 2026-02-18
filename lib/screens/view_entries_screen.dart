import 'dart:io';
import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import 'detail_entry_screen.dart';

class ViewEntriesScreen extends StatefulWidget {
  @override
  _ViewEntriesScreenState createState() => _ViewEntriesScreenState();
}

class _ViewEntriesScreenState extends State<ViewEntriesScreen> {
  final StorageService _storageService = StorageService();
  List<Map<String, dynamic>> _entries = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadEntries();
  }

  Future<void> _loadEntries() async {
    final entries = await _storageService.getEntries();
    setState(() {
      _entries = entries;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Travel Journal')),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : _entries.isEmpty
              ? Center(child: Text('No entries yet.'))
              : ListView.builder(
                  itemCount: _entries.length,
                  itemBuilder: (context, index) {
                    final entry = _entries[index];
                    return Card(
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: entry['photoPath'] != null
                            ? Image.file(
                                File(entry['photoPath']),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              )
                            : Icon(Icons.photo),
                        title: Text(entry['note'] ?? 'No note'),
                        subtitle: Text(
                          'Lat: ${entry['latitude']}, Lng: ${entry['longitude']}\n'
                          'Date: ${entry['createdAt']}',
                        ),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailEntryScreen(entry: entry),
                            ),
                          );
                        }
                      ),
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
