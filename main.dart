// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(), //null word to be replaced by stateless widget
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title: Center(
            child: Text('Ask me anything'),
          ),
          backgroundColor: Colors.lightBlueAccent),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(
            () {
              ballNumber = Random().nextInt(4) + 1;
              print('ball number is $ballNumber');
            },
          );
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    ); /////;
  }
}
