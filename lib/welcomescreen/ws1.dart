import 'package:flutter/material.dart';
import 'ws2.dart';

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
              width: 100,
              height: 100,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to the ultimate\n\n',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                  TextSpan(
                    text: 'Mindful Hub!',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.green, // Change the color as desired
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your mindful mental health AI companion \n for everyone, anywhere 🍃.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )
            ),
            SizedBox(height: 32),
            Image.asset(
              'assets/images/loading screen3/frame1.png',
              width: 500,
              height: 500,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              child: Text('Get Started',
              style: TextStyle(fontSize: 18, color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 216, 143, 7)),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen2()),
                );
              },
              
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Handle sign in button press
              },
               child:
              // Text('Already have an account?   Sign In'),
              RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: ' Sign In',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 206, 91, 4), // Change the color as desired
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
