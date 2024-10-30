import 'package:event_management_app/screens/plan.dart';
import 'package:event_management_app/screens/reservation_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Events',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        foregroundColor: const Color.fromARGB(255, 227, 224, 224),
        backgroundColor: const Color.fromARGB(255, 106, 132, 63),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/profile.jpg'),
              radius: 18,
            ),
            onPressed: () {
              // Implement profile navigation functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore Plans',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: plans.length,
                itemBuilder: (context, index) {
                  return PlanCard(plan: plans[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Mock data for plans
final List<Plan> plans = [
  Plan(
    name: 'Wedding Package',
    price: 2000,
    image: 'lib/assets/wedding.jpg',
    description: 'Complete wedding planning, decor, catering, and more.',
  ),
  Plan(
    name: 'Corporate Event',
    price: 1500,
    image: 'lib/assets/corporate.jpg',
    description: 'Best suited for corporate events and meetings.',
  ),
  Plan(
    name: 'Birthday Bash',
    price: 1000,
    image: 'lib/assets/birthday.jpg',
    description: 'Amazing birthday parties with fun activities and food.',
  ),
];

// Plan model class
/*class Plan {
  final String name;
  final double price;
  final String image;
  final String description;

  Plan({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}*/

// Plan card widget
class PlanCard extends StatelessWidget {
  final Plan plan;

  const PlanCard({Key? key, required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      shadowColor: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              plan.image,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              plan.name,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              plan.description,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${plan.price}',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReservationScreen(plan: plan),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 106, 132, 63),
                  ),
                  child: const Text(
                    'Reservation',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
