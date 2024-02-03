import 'dart:async';
import 'package:flutter/material.dart';
import 'screen2.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 5), () {
      navigateToNextScreen();
    });
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NextScreen1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          navigateToNextScreen();
        },
        child: Center(
          child: Text('Screen1'),
        ),
      ),
    );
  }
}

class NextScreen1 extends StatefulWidget {
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen1> {
  double _progressValue = 0.0;


  @override
  void initState() {
    super.initState();
    _simulateLoading();
    
  }

  Future<void> _simulateLoading() async {
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 50));
      setState(() {
        _progressValue = i / 100.0;
      });
    }
    if(_progressValue == 1.0){
    Timer(Duration(milliseconds: 50), () { 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ShakingScreen()),
      );
    });
  }
}
  
  // //after loading complete navigate to next screen SHAKING SCREEN
  // void navigateToNextScreen() {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => ShakingScreen()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(161, 157, 66, 10),
      body: Center(
        child: Stack(
          //  Text('Next Screen'),
          alignment: Alignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/screen1/logomarkscreen1.png',
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: screenHeight * 0.4,
              child: Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  value: _progressValue,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.33,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '${(_progressValue * 100).toStringAsFixed(1)}%',
                  style: TextStyle(fontSize: 18.0,color:Colors.blue),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
