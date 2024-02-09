import 'dart:async';
import 'package:mindfuldost_hub/screens/screen1.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen1()),
      );
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(161, 157, 66, 10), // Set the background color to dark
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logof.png'), // Replace 'logo.png' with your image path
            SizedBox(height: 16),
            Text(
              'MindfulDost Hub',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
