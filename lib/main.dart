import 'package:flutter/material.dart';
import 'splash_screen/splash_screen.dart'; // Import your splash screen
import 'screens/screen1.dart'; // Import your main screen
import 'screens/screen2.dart'; // Import your next screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        // Simulate loading for the splash screen
        future: Future.delayed(Duration(seconds: 3)), // Adjust the duration as needed
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              // Return the splash screen while it's loading
              return splash_screen();
              
            default:
              // Once the splash screen is done, navigate to the main screen
              return Navigator(
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(
                    builder: (context) => NextScreen1(),
                  );
                },
              );
              
          }
        },
      ),
    );
  }
}
