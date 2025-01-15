import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DieRollApp());
}

class DieRollApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DieRollState();
  }
}

class _DieRollState extends State<DieRollApp> {
  // Private state variables for the two dice
  var dice1Image = 'assets/dice-1.png';
  var dice2Image = 'assets/dice-1.png';
  final random = Random();

  // Method to roll the dice
  void rollDice() {
    setState(() {
      // Generate random numbers for both dice
      int dice1 = random.nextInt(6) + 1; // Random number 1-6
      int dice2 = random.nextInt(6) + 1; // Random number 1-6

      // Update the image paths dynamically
      dice1Image = 'assets/dice-$dice1.png';
      dice2Image = 'assets/dice-$dice2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Roll Two Dice App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Roll Two Dice',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 21, 146, 223),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    dice1Image,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    dice2Image,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: rollDice, // Call the rollDice method on button press
                child: const Text('Roll'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}