import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddEntryScreen extends StatefulWidget {
  @override
  _AddEntryScreenState createState() => _AddEntryScreenState();
}

class _AddEntryScreenState extends State<AddEntryScreen> {
  final _controller = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Entry")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Notes"),
            ),
            SizedBox(height: 20),
            _image == null ? Text("No image selected") : Image.file(_image!),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Take Photo"),
              onPressed: _pickImage,
            ),
            ElevatedButton(
              child: Text("Save Entry"),
              onPressed: () {
                // Save to storage later
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
