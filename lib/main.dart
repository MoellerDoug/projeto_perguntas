import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

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

    final List<Map<String, Object>> perguntas = [
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

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]['texto']),
              Resposta('Norte', _responder),
              Resposta('Sul', _responder),
              Resposta('Nordeste', _responder),
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