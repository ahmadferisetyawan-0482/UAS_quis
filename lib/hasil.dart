import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int _totalScore;
  final Function Reset;
  Hasil(this._totalScore, this.Reset);

  String get _hasilScore {
    var hasilText;
    if (_totalScore >= 75) {
      hasilText = " Nilai A";
    } else if (_totalScore >= 50) {
      hasilText = "Nilai B";
    } else if (_totalScore >= 25) {
      hasilText = "Nilai C";
    } else if (_totalScore >= 0) {
      hasilText = "Nilai D";
    } else {
      hasilText = "Nilai E";
    }
    return hasilText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: Text('Anda mendapat ' + _hasilScore, style: TextStyle(fontSize: 24),),
          ),
        ),
        FlatButton(
          child: Text('reset'),
          textColor: Colors.blue,
          onPressed: Reset,
        )
      ],
    );
  }
}
