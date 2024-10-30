// lib/screens/sponsor_screen.dart
import 'package:flutter/material.dart';

class SponsorScreen extends StatelessWidget {
  const SponsorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponsors'),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
      ),
      body: const Center(
        child: Text('List of Sponsors'),
      ),
    );
  }
}
