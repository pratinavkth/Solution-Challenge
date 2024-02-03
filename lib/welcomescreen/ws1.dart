import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/loading screen3/frame2.png',
              width: 200,
              height: 200,
            ),
            Text(
              'Welcome to Mindful Hub!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            Image.asset(
              'assets/images/loading screen3/frame1.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle get started button press
              },
              child: Text('Get Started'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Handle sign in button press
              },
              child: Text('Already have an account? Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
