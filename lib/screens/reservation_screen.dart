import 'package:event_management_app/screens/booking_form_screen.dart';
import 'package:flutter/material.dart';
import 'plan.dart'; // Make sure to import the Plan model

class ReservationScreen extends StatelessWidget {
  final Plan plan; // This should be defined

  const ReservationScreen({Key? key, required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plan.name),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              plan.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            const SizedBox(height: 10),
            Text(
              plan.name,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              plan.description,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '\$${plan.price}',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Correctly pass the plan parameter to BookingFormScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookingFormScreen(plan: plan), // Pass the plan object
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 132, 63),
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
