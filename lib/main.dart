import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(child: Text("DICEE",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),)),
          backgroundColor: Colors.black87,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 2;
  int RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child:  FlatButton(
              child: Image.asset('images/Dice $LeftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  LeftDiceNumber = Random().nextInt(6) + 1;
                });
                print("Dice $LeftDiceNumber");
              },
            ),
          ),
          Expanded(
            child:  FlatButton(
              child: Image.asset('images/Dice $RightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  RightDiceNumber = Random().nextInt(6) + 1;
                });
                print("Dice $RightDiceNumber");
              },
            ),
          ),
        ],
      ),
    );
  }
}








