// main.dart
import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/login_screen.dart';
import 'screens/event_list_screen.dart';
import 'screens/home_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/ticket_screen.dart'; // Ensure this is imported
import 'screens/booking_form_screen.dart';
import 'screens/sponsor_screen.dart';
import 'screens/view_bookings_screen.dart'; // Ensure this is included
import 'screens/reservation_screen.dart'; // Add the ReservationScreen import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 106, 132, 63)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/eventList': (context) => EventListScreen(),
        '/ticket': (context) => TicketScreen(),
        // Remove plan: null here
        '/sponsor': (context) => SponsorScreen(),
        '/viewBookings': (context) => ViewBookingsScreen(),
      },
    );
  }
}
