import 'dart:async';
import 'package:flutter/material.dart';
import 'screen2.dart';



class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});
  @override
  _SplashScreenState1 createState() => _SplashScreenState1();
}

class _SplashScreenState1 extends State<SplashScreen1> {
int progress=0;
Timer? timer;

void startTime(){
  timer?.cancel();

  timer=Timer.periodic(
    const Duration(milliseconds: 50), 
    (timer) {
      if(timer.tick<=100){
        setState(() {
          progress=timer.tick;
        });
  }
  else{
    timer.cancel();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ShakingScreen()),
    );
  }
  },
  );
}
@override
void initState(){
  super.initState();
  startTime();  
}
@override
void dispose()
{
  super.dispose();
  timer?.cancel();
}
@override
Widget build(BuildContext context){
  final w = MediaQuery.of(context).size.width;
  final h = MediaQuery.of(context).size.height;

return Scaffold(
  backgroundColor: const Color(0xff251404),
  body:SafeArea(
child: Stack(
  alignment:Alignment.center ,
  children: [
    const SplashBackground(),
    Text(
      '$progress%',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    )
  ],
  ))
);  
}
}

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: 14,
          left: (w - 280) / 2,
          child: const CircleWidget(),
        ),
        Positioned(
          top: ((h - 280) / 2) - 20,
          left: -185,
          child: const CircleWidget(),
        ),
        Positioned(
          top: ((h - 280) / 2) - 20,
          right: -185,
          child: const CircleWidget(),
        ),
        Positioned(
          bottom: 14,
          left: (w - 280) / 2,
          child: const CircleWidget(),
        ),
      ],
    );
  }
}
class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 280,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff4F3422),
      ),
    );
  }
}