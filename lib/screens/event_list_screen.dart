import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events')),
      body: ListView.builder(
        itemCount: 10, // Dummy count, replace with your event data count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Event $index'),
            subtitle: Text('Event details'),
            onTap: () {
              // Navigate to event details screen with eventId
              Navigator.pushNamed(
                context,
                '/eventDetails',
                arguments: {'eventId': index}, // Pass eventId dynamically
              );
            },
          );
        },
      ),
    );
  }
}
