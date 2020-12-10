
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
              Text(perguntas[perguntaSelecionada]),
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

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}