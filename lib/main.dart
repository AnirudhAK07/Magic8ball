import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Center(child: Text('ASK ME ANYTHING!')),
          backgroundColor: Colors.grey,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randomnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                randomnumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$randomnumber.png'),
          ),
        ),
      ],
    );
  }
}
