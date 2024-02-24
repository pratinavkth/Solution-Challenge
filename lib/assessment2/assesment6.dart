import 'package:flutter/material.dart';



class medications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assessment 2'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Are you taking any medications ?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SquareButton(
                      onPressed: () {},
                      title: 'Prescribed Medications',
                    ),
                    SquareButton(
                      onPressed: () {},
                      title: 'I\'m not taking any',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Text(
                //   'Over the Counter Supplements',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SquareButton(onPressed: (){}, title: 'Over the counter supplements',),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SquareButton(
                      onPressed: () {},
                      title: 'Prefer not to say',
                    ),
                    SquareButton(
                      onPressed: () {
                        
                      },
                //       onPressed:() => NavigationHelper.pushReplacementNamed(
                //    AppRoutes.Medications, 
                //  ),
                      title: 'Continue →',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const SquareButton({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}