import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/ReadDataScreen.dart'; // Ensure this file exists

class SaveDataScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Save Data to Firestore")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: "Enter Data"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection('data').add({
                    'text': _controller.text,
                  });
                  _controller.clear();
                },
                child: Text("Save to Firestore"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReadDataScreen()),
                  );
                },
                child: Text("Go to Read Data Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
