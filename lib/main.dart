import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'package:projeto_perguntas/questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual região do Brasil você mora?',
      'respostas': ['Norte', 'Sul', 'Sudeste', 'Nordeste'],
    },
    {
      'texto': 'Qual sua bebida favotita?',
      'respostas': ['Chimarrão', 'Cerveja', 'Cachaça', 'Água'],
    },
    {
      'texto': 'Qual time você torce?',
      'respostas': ['Internacional', 'Grêmio', 'São Paulo', 'Nenhum destes'],
    },
  ];

  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
      print(_perguntaSelecionada);
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder
              )
              : Resultado(),
        )
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}