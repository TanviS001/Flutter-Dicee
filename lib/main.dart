import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff0097b2),
      appBar: AppBar(
        backgroundColor: Color(0xff047387),
        title: Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDIceNumber=1;
  int rightDiceNumber=2;

  void newNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDIceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width:16.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                newNumber();
              },
              child: Image.asset('images/dice$leftDIceNumber.png'),
            ),
          ),
          SizedBox(
            width:20.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                newNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          SizedBox(
            width:16.0,
          ),
        ],
      ),
    );;
  }
}

