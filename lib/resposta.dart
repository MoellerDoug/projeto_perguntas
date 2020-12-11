import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String resposta;

  Resposta(this.resposta);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        resposta,
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
      ),
      onPressed: null,
    );
  }
}
