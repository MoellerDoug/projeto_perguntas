import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'package:projeto_perguntas/questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é seu animal preferido?',
      'respostas': [
        { 'texto': 'Papagaio', 'pontuacao': 5},
        { 'texto': 'Cachorro', 'pontuacao': 9},
        { 'texto': 'Gato', 'pontuacao': 8},
        { 'texto': 'Tartaruga', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual sua bebida favorita?',
      'respostas': [
        { 'texto': 'Chimarrão', 'pontuacao': 40},
        { 'texto': 'Cerveja', 'pontuacao': 9},
        { 'texto': 'Cachaça', 'pontuacao': 7},
        { 'texto': 'Café', 'pontuacao': 60},
      ],
    },
    {
      'texto': 'Qual time você torce?',
      'respostas': [
        { 'texto': 'Internacional', 'pontuacao': 8},
        { 'texto': 'Grêmio', 'pontuacao': 8},
        { 'texto': 'Afogados', 'pontuacao': 6},
        { 'texto': 'Nenhum destes', 'pontuacao': 3},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      print(_perguntaSelecionada);
      print(_pontuacaoTotal);
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
              : Resultado(_pontuacaoTotal),
        )
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}