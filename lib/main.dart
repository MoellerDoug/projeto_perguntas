
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta repsondida!');
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual região do Brasil você mora?',
      'Qual time você torce?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Norte'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Sul'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Nordeste'),
              onPressed: responder,
            ),
          ],
        ),
      )
    );
  }
}