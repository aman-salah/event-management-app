import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final int eventId;

  EventDetailsScreen({required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Event Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Date: Event Date'),
            Text('Time: Event Time'),
            Text('Location: Event Location'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to registration screen for this event
                Navigator.pushNamed(
                  context,
                  '/register',
                  arguments: {'eventId': eventId},
                );
              },
              child: Text('Register or Buy Ticket'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ticket screen for this event
                Navigator.pushNamed(
                  context,
                  '/tickets',
                  arguments: {'eventId': eventId},
                );
              },
              child: Text('Buy Ticket'),
            )
          ],
        ),
      ),
    );
  }
}
