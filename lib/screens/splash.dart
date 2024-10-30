import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import your login screen or any other screen to navigate to

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // This variable will control the opacity of the logo
  double _logoOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Simulate a delay and set the opacity to 1.0 for the logo fade-in effect
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _logoOpacity = 1.0; // Make the logo fully visible
      });
    });

    // After 5 seconds, navigate to the login screen (or any other screen you prefer)
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              LoginScreen(), // Change to your preferred screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF8FFE8), // Set the background color using hex
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Fade-in animation for the splash logo image
            AnimatedOpacity(
              opacity: _logoOpacity,
              duration: Duration(seconds: 1), // Fade-in duration
              child: Image.asset(
                'lib/assets/logo.png', // Ensure this path is correct and the image is available
                width: 200, // Adjust width to your preference
                height: 200, // Adjust height to your preference
              ),
            ),
            const SizedBox(height: 20),
            // Change the text font style for "We Do It Better"
            const Text(
              "We Do It Better",
              style: TextStyle(
                fontFamily:
                    'Popins', // Ensure the font is added in pubspec.yaml
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                // Change text color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
