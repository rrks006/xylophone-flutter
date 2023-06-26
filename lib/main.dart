import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(int number, MaterialColor color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(1, Colors.purple),
            buildKey(2, Colors.indigo),
            buildKey(3, Colors.green),
            buildKey(4, Colors.yellow),
            buildKey(5, Colors.orange),
            buildKey(6, Colors.blue),
            buildKey(7, Colors.red)
          ]),
        ),
      ),
    );
  }
}
