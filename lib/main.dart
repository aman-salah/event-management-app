import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/event_list_screen.dart';
import 'screens/event_details_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/ticket_screen.dart';
import 'screens/feedback_screen.dart';
import 'screens/sponsor_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
