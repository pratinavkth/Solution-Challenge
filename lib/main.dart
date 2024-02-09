import 'package:flutter/material.dart';
import 'splash_screen/splash_screen.dart'; // Import your splash screen
import 'package:mindfuldost_hub/screens/screen1.dart';
import 'package:mindfuldost_hub/screens/screen2.dart';
import 'package:mindfuldost_hub/welcomescreen/ws1.dart';
import 'package:mindfuldost_hub/welcomescreen/ws2.dart';
import 'package:mindfuldost_hub/welcomescreen/ws3.dart';
import 'package:mindfuldost_hub/welcomescreen/ws4.dart';
import 'package:mindfuldost_hub/signin_signup/signin.dart';
import 'package:mindfuldost_hub/signin_signup/signup.dart';
import 'package:mindfuldost_hub/homepage/home1.dart';


import 'splash_screen/dem01.dart'; // Import your splash screen
import 'homepage/home1.dart'; // Import your home screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const Color(0xff251404),
        
        // Add any other theme configurations as needed
      ),
      // home:splash_screen(),
      routes: {
    '/': (context) => splash_screen(),
        '/splashscreen': (context) => splash_screen(),
        '/screen1': (context) => const SplashScreen1(),
        '/shakingScreen': (context) => ShakingScreen(),
        '/ws1': (context) =>  WelcomeScreen(),
        '/ws2': (context) =>  WelcomeScreen2(),
        '/ws3': (context) =>  WelcomeScreen3(),
        '/ws4': (context) =>  WelcomeScreen4(),
        '/signup': (context) =>  SignupPage(),
        '/login': (context) =>  SignInPage(),
        // '/home1': (context) =>  Homepage(),
      },
    );
  }
}
