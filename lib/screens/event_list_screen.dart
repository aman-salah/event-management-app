import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event List'),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: Center(
        child: const Text(
          'Here is the list of events.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
