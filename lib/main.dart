import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Magic8BallPage(),
      ),
    );

class Magic8BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = math.Random().nextInt(5) + 1;
              // debugPrint('ballNumber: $ballNumber');
            });
            // debugPrint('I got clicked');
          },
          child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
