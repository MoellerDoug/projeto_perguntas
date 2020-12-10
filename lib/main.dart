
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
              Text(perguntas[_perguntaSelecionada]),
              RaisedButton(
                child: Text('Norte'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Sul'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Nordeste'),
                onPressed: _responder,
              ),
            ],
          ),
        )
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}