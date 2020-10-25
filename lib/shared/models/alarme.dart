import 'package:flutter/material.dart';

class Alarme {
  int id;
  TimeOfDay time;
  List<int> diaSemana;
  String descricao;
  int colorIndex;

  Alarme({
    this.id,
    this.descricao,
    this.diaSemana,
    this.colorIndex,
    this.time,
  });
}
