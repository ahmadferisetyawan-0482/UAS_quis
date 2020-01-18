import 'package:flutter/material.dart';
import 'package:quis/kuis.dart';
import 'package:quis/hasil.dart';

// void main(){
//   runApp(MyApp());
//   }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var _pertanyaanIndex = 0;
  var _totalScore = 0;
  void _klikJawaban(int score) {

    _totalScore += score;
    print(_totalScore);
    setState(() {
      _pertanyaanIndex++;
    });
    print(_pertanyaanIndex);
    if (_pertanyaanIndex < _pertanyaan.length) {
      print('Masih ada');
    } else {
      print('Selesai');
    }
  }
  void Reset(){
    setState((){
      _pertanyaanIndex=0;
      _totalScore=0;
    });
  }

  var _pertanyaan = [
    {
      'textPertanyaan': "Apa warna langit?",
      'textJawaban': [
        {'text': 'Hijau', 'score': 0},
        {'text': 'Biru', 'score': 25},
        {'text': 'Ungu', 'score': 0}
      ]
    },
    {
      'textPertanyaan': "Berapa kaki kambing?",
      'textJawaban': [
        {'text': 'Satu', 'score': 0},
        {'text': 'Tiga', 'score': 0},
        {'text': 'Empat', 'score': 25}
      ]
    },
    {
      'textPertanyaan': "Dimanakah ikan hidup?",
      'textJawaban': [
        {'text': 'Air', 'score': 25},
        {'text': 'Udara', 'score': 0},
        {'text': 'Darat', 'score': 0}
      ]
    },
    {
      'textPertanyaan': "Burung terbang menggunakan?",
      'textJawaban': [
        {'text': 'Kepala', 'score': 0},
        {'text': 'Sayap', 'score': 25},
        {'text': 'Ekor', 'score': 0}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quis'),
          ),
          body: _pertanyaanIndex < _pertanyaan.length
              ? Kuis(
                  klikJawaban: _klikJawaban,
                  pertanyaan: _pertanyaan,
                  pertanyaanIndex: _pertanyaanIndex,
                )
              : Hasil(_totalScore,Reset)),
    );
  }
}
