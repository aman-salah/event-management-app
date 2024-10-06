import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  final int eventId;

  RegistrationScreen({required this.eventId});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register for Event')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Register for Event', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Register user for event
              },
              child: Text('Confirm Registration'),
            ),
          ],
        ),
      ),
    );
  }
}
