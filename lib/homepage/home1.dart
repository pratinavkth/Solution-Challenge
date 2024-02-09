import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String username;

  Homepage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.white, size: 25),
                SizedBox(width: 8),
                Text(
                  '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                  style: TextStyle(fontSize: 16,
                  color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(40),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person,size: 42),
                ),
                SizedBox(width: 20),
                Text(
                  'Hello, $username!',
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text('Sleep Cycle Icons',style: TextStyle(fontSize: 20,color: Colors.white),),
              
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.mood, color: Colors.white, size: 30),
                Icon(Icons.notifications,color: Colors.white, size: 30),
                Icon(Icons.home,color: Colors.white, size: 30),
                Icon(Icons.person,color: Colors.white, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
