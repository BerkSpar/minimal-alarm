import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../shared/models/alarme.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  TimeOfDay now = TimeOfDay.now();

  List<Alarme> alarmes = <Alarme>[
    Alarme(
      id: 0,
      colorIndex: 1,
      descricao: 'Teste do Teste',
      diaSemana: [0, 1, 2],
      time: TimeOfDay(hour: 8, minute: 55),
    ),
  ];

  _HomeControllerBase() {
    _setTimer();
  }

  _setTimer() {
    Timer.periodic(
      Duration(
        milliseconds: 50,
      ),
      (timer) => now = TimeOfDay.now(),
    );
  }
}
