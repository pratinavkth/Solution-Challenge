import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:mindfuldost_hub/welcomescreen/ws1.dart';

// before this screen, you should have screen1.dart and screen2.dart
// so after loading 100 percent of previous screen i can come to here
// and then i can shake my phone to navigate to next screen


class ShakingScreen extends StatefulWidget {
  @override
  _ShakingScreenState createState() => _ShakingScreenState();
}

class _ShakingScreenState extends State<ShakingScreen> {
  late ShakeDetector detector;
  bool _isLoadingComplete = false;
  bool _isShaking = false;

  @override
  void initState() {
    super.initState();
    // Set up the shake detector with a shake threshold
    detector = ShakeDetector.autoStart(
      shakeThresholdGravity: 5.0,
      onPhoneShake: () {
        navigateToNextScreen();
      },
    );
  }
   void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             
            Container(
              width: 400,
              height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade900,
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                        'Fetching Data.....',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                   ),
                   SizedBox(height: 16,),
                  Image.asset('assets/images/loadingscreen2/Solid mobile.png',width: 24,height: 24,),
                  SizedBox(height: 16,),
                  SizedBox(height: 8),
                  Text(
                    'Shake your phone to continue',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 16,),
                ]),
              ),
            SizedBox(height: 50),              
        
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    detector.stopListening();
  }
}

