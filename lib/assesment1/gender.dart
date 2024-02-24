import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gender'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What\'s your gender?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            buildGenderButton('Male'),
            SizedBox(height: 10),
            buildGenderButton('Female'),
            SizedBox(height: 10),
            buildGenderButton('Prefer to Skip'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedGender.isNotEmpty) {
                  print('Selected Gender: $selectedGender');
                  Navigator.pushReplacementNamed(context, '/weight');

                  
                } else {
                  print('Please select a gender.');
                }
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGenderButton(String gender) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedGender = gender;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: selectedGender == gender ? Colors.blue : null,
      ),
      child: Text(gender),
    );
  }
}
