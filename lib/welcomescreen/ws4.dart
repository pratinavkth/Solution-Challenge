import 'package:flutter/material.dart';
import 'package:mindfuldost_hub/signin_signup/signin.dart';
import 'package:mindfuldost_hub/signin_signup/signup.dart';

import 'package:flutter/material.dart';
import 'dart:async';
// import 'ws4.dart';

class WelcomeScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0x3C357C),
        body: SafeArea(
            child: Stack(
          alignment: Alignment.center,
          children: [
            const WelcomeBackground(),
            Positioned(
             top: 20,
             left: 210,
             child:Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ),
            Positioned(
              top: 50,
              left: -145,
              child: Image.asset(
                'assets/images/welcome screen1/wsgrp3.png', 
                width: 800, 
                height: 600)
            ),
            SizedBox(height: 20),
          ],
        )
        )
        );
  }
}

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: 600,
          // left: (w - 280) / 2
          left: -235,
          child: const CircleWidget(),
        ),
        Positioned(
          top:620,
          left: 210,
          child: Text(
            'Step 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
          ),
        ),
        Positioned(
          top:720,
          left:85,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Loving & Supportive \n',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                  TextSpan(
                    text: 'Community',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple, // Change the color as desired
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                ],
              ),
            ),
        ),
        Positioned(
          top:880,
          left:176,
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the next screen
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
              
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Next Screen'),
                Icon(Icons.arrow_forward),
                
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 960,
      height: 960,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xff251404),
                
              
          ),
      );
  }
}
