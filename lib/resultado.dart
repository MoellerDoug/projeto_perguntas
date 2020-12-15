import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;

  Resultado(this.pontuacao);

  String get respostaFinal {
    if(pontuacao < 15) {
      return 'Muito Bom!';
    } else if(pontuacao < 14) {
      return 'Parabéns!';
    } else if(pontuacao < 40) {
      return 'Você é incrível!';
    } else if(pontuacao < 60) {
      return 'Tu é um baita gaúcho!';
    } else {
      return 'Tu é um baita programador!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        respostaFinal,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
