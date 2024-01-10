import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:second_project/ReadWriteDataScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Read/Write',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ReadWriteDataScreen(), // The screen for both reading and writing data
    );
  }
}
