import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[600],
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: const Text('Magic 8 Ball'),
        ),
        body: BallPage(),
      ),
    ),
  );
}

// Stateless Widget
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

// Stateful Widget
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
