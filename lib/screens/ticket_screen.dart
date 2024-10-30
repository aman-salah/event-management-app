import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Screen'),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: Center(
        child: const Text(
          'This is the ticket screen.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
