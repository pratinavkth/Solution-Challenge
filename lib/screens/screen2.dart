import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

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
      shakeThresholdGravity: 10.0,
      onPhoneShake: () {
        navigateToNextScreen();
      },
    );
  }
   void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NextScreen()),
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
            //small circle
            // Container(
            //   width: 50,
            //   height: 50,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: Colors.green.shade900,
            //     ),
            //   ),
            // SizedBox(height: 8),
            // //medium circle
            // Container(
            //   width: 100,
            //   height: 100,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: Colors.green.shade900,
            //     ),
            //   ),
            // SizedBox(height: 8),
            //large circle  
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
        //     Text(
        //       'Fetching Data.....',
              
        //       style: TextStyle(fontSize: 24, color: Colors.white),
        //     ),
            
        //     Image.asset('assets/images/loadingscreen2/Solid mobile.png',width: 24,height: 24,),
        //     SizedBox(height: 8),
        // Text(
        //   'Please shake your phone to continue',
        //   style: TextStyle(fontSize: 16, color: Colors.white),
        // ),
            // SizedBox(height: 20),
            // Image.asset('assets/images/loadingscreen2/vector-1.png'),
            // SizedBox(height: 10), 
            // Image.asset('assets/images/loadingscreen2/vector-2.png'),
            // SizedBox(height: 10),
            // Image.asset('assets/images/loadingscreen2/vector-3.png'),
            // SizedBox(height: 10),
            // Image.asset('assets/images/loadingscreen2/Solid mobile.png'),
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

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Next Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
class Screen2 extends StatelessWidget {
  final VoidCallback onLoadingComplete;

  const Screen2({Key? key, required this.onLoadingComplete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Your Screen2 implementation with circular loading

    // Assume circular loading completes somewhere in the code
    // Call the callback to notify that loading is complete
    onLoadingComplete();

    return Container(
      // Your Screen2 UI
    );
  }
}