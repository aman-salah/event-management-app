import 'package:event_management_app/screens/plan.dart';
import 'package:flutter/material.dart';

class BookingFormScreen extends StatelessWidget {
  final Plan plan; // The Plan object passed from ReservationScreen

  BookingFormScreen({Key? key, required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book ${plan.name}'),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add your booking form fields here
          ],
        ),
      ),
    );
  }
}
