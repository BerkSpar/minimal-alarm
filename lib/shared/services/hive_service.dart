import 'dart:async';
import 'package:hive/hive.dart';
import 'package:minimal_alarm/shared/models/alarme.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  Completer<Box> _completer = Completer<Box>();

  HiveService() {
    _init();
  }

  _init() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    final box = await Hive.openBox('alarmes');
    if (!_completer.isCompleted) _completer.complete(box);
  }

  Future<List<Alarme>> getAlarmes() async {
    List<Alarme> list = <Alarme>[];

    return list;
  }

  Future setAlarmes(List<Alarme> alarme) async {}
}
