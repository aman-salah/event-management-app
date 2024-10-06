import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  final int eventId;

  TicketScreen({required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buy Tickets')),
      body: ListView.builder(
        itemCount: 5, // Replace with actual ticket count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Ticket Type $index'),
            subtitle: Text('Price: \$${index * 10 + 20}'),
            onTap: () {
              // Purchase ticket logic
            },
          );
        },
      ),
    );
  }
}
