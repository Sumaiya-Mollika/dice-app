import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 5;

  void changeDice() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade700,
      appBar: AppBar(
        title: Text('Dice App',
            style:
                TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 5)),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeDice();
                },
                child: Image(
                  image: AssetImage('images/dice$leftdice.png'),
                ),
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeDice();
                },
                child: Image(
                  image: AssetImage('images/dice$rightdice.png'),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
