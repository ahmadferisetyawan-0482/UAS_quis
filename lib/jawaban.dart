import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function pilihJawaban;
  final String textJawab;
  Jawaban(this.pilihJawaban, this.textJawab);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(textJawab),
        onPressed: pilihJawaban,
      ),
    );
  }
}