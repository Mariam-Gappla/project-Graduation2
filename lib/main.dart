import 'package:flutter/material.dart';
import 'package:testa/pages/Chat.dart';
import 'package:testa/pages/MedicalRecords.dart';
import 'package:testa/pages/Notifications.dart';
import 'package:testa/pages/Personal_Details.dart';
import 'package:testa/pages/Store_Favourities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chat(),
    );

  }
}
