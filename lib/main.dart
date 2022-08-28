import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask me Anything'),
          backgroundColor: Colors.purple,
        ),
        body: magicballPage(),
      ),
    ),
  );}

class magicballPage extends StatefulWidget {
  const magicballPage({Key? key}) : super(key: key);
  @override
  State<magicballPage> createState() => _magicballPageState();
}

class _magicballPageState extends State<magicballPage> {
  int randomNum = 1;

  void updateNums()
  {
    setState(() {
      randomNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  updateNums();
                });
              },
              child: Image.asset('images/ball$randomNum.png'),),
          ),
        ],
      ),
    );
  }
}
