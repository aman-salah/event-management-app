import 'package:event_management_app/db_helper.dart';
import 'package:flutter/material.dart';

class ViewBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Bookings'),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: DatabaseHelper().getBookings(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No bookings found.'));
          }

          final bookings = snapshot.data!;

          return ListView.builder(
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              final booking = bookings[index];
              return ListTile(
                title: Text(booking['name'] ?? 'N/A'),
                subtitle: Text(
                  'Event: ${booking['planName'] ?? 'N/A'}\nDate: ${booking['date'] ?? 'N/A'}',
                ),
                trailing: Text(
                    '\$${booking['planPrice']?.toStringAsFixed(2) ?? 'N/A'}'),
              );
            },
          );
        },
      ),
    );
  }
}
