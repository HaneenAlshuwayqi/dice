import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1B1717),
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Dice',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'KodeMono',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topDiceNumber = 1;
  int bottomDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      topDiceNumber = Random().nextInt(6) + 1;
      bottomDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),),
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
                print('Top dice got preessed!');
              },
              child: Image.asset('images/dice$topDiceNumber.png'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
                print('Bottom Dice got preessed!');
              },
              child: Image.asset('images/dice$bottomDiceNumber.png'),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),),
        ],
      ),
    );
  }
}