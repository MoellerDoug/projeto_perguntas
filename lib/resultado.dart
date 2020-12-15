import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            respostaFinal,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.green,
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
