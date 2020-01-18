import 'package:flutter/material.dart';
import 'package:quis/pertanyaan.dart';
import 'package:quis/jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final Function klikJawaban;

  Kuis({
    @required this.pertanyaan,
    @required this.pertanyaanIndex,
    @required this.klikJawaban,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Pertanyaan(pertanyaan[pertanyaanIndex]['textPertanyaan']),
            ...(pertanyaan[pertanyaanIndex]['textJawaban'] as List<Map<String, Object>>)
                .map((textJawaban) {
              return Jawaban(()=>klikJawaban(textJawaban['score']), textJawaban['text']);
            }).toList()
          ],
    );
  }
}