import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DiceScreen(),
    ),
  ));
}

// StateFul is Mutable & Stateless is Immutable

class DiceScreen extends StatefulWidget {
  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  // To Generate the Number Automatically We Use Math Library
  void diceNumber() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceNumber();
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNo.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceNumber();
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNo.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
