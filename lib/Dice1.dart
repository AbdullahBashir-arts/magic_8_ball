import 'package:flutter/material.dart';
import 'dart:math';

class Dice1 extends StatefulWidget {
  Dice1({super.key});

  @override
  State<Dice1> createState() => _Dice1State();
}

class _Dice1State extends State<Dice1> {
  int ball = 1;
  ballN() {
    setState(
      () {
        ball = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                ballN();
              },
              child: Image.asset('assets/ball$ball.png'),
            ),
          ],
        ),
      ),
    );
  }
}
