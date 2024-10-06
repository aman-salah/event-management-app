import 'package:flutter/material.dart';

class SponsorScreen extends StatelessWidget {
  final int eventId;

  SponsorScreen({required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sponsors')),
      body: ListView.builder(
        itemCount: 3, // Replace with actual sponsor count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Sponsor $index'),
            subtitle: Text('Contact Info: sponsor@example.com'),
          );
        },
      ),
    );
  }
}
