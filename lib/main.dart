import 'package:flutter/material.dart';

import 'screens/display.dart';
import 'screens/student_entry.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentEntryScreen(),
        '/display': (context) => DisplayScreen()
      }));
}
