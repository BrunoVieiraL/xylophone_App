import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MarimbaApp());

class MarimbaApp extends StatelessWidget {
  const MarimbaApp({Key? key}) : super(key: key);

  void tocarSom(int numMusica) {
    final player = AudioCache();
    player.play('nota$numMusica.wav');
  }

  Expanded criarBotao(Color cor, int numNota) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(Colors.teal, 1),
              criarBotao(Colors.blue, 2),
              criarBotao(Colors.yellow, 3),
              criarBotao(Colors.red, 4),
              criarBotao(Colors.grey, 5),
              criarBotao(Colors.purple, 6),
              criarBotao(Colors.brown, 7),
            ],
          ),
        ),
      ),
    );
  }
}
