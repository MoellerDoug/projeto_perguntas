import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String resposta;
  final void Function() onSelected;

  Resposta(this.resposta, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(
          resposta,
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        onPressed: onSelected,
      ),
    );
  }
}
