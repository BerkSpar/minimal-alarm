import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../shared/models/alarme.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  TimeOfDay now = TimeOfDay.now();

  List<Alarme> alarmes = <Alarme>[];

  _HomeControllerBase() {
    _setTimer();
    _init();
  }

  _init() {
    //get alarms
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
