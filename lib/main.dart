import 'package:flutter/material.dart';
import 'package:student_management/screens/card_screen.dart';
import 'screens/display.dart';
import 'screens/student_entry.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/card',
      routes: {
        '/': (context) => const StudentEntryScreen(),
        '/display': (context) => const DisplayScreen(),
        '/card': (context) => CardScreen()
      }));
}
