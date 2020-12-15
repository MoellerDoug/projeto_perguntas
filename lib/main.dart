import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

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

    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada ? Column(
            children: <Widget>[
              Questao(_perguntas[_perguntaSelecionada]['texto']),
              ...respostas.map((r) => Resposta(r, _responder)).toList(),
            ],
          ) : Center(
            child: Text(
              'Parabéns!',
              style: TextStyle(fontSize: 28),
            ),
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