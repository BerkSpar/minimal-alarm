import 'package:flutter/material.dart';

import 'package:minimal_alarm/utils/colors.dart';

class DiasSemanaWidget extends StatelessWidget {
  final List<int> diasSemana;

  DiasSemanaWidget({
    @required this.diasSemana,
  });

  // ignore: missing_return
  String _getText(int id) {
    switch (id) {
      case 0:
        return 'D';
      case 1:
      case 5:
      case 6:
        return 'S';
      case 2:
        return 'T';
      case 3:
      case 4:
        return 'Q';
    }
  }

  List<Widget> _getButtons() {
    return List.generate(7, (id) {
      return DiaButton(
        text: _getText(id),
        color: id == 0 ? lightRed : lightBlack,
        ativo: diasSemana.contains(id),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _getButtons(),
    );
  }
}

class DiaButton extends StatelessWidget {
  final String text;
  final Color color;
  final bool ativo;

  DiaButton({
    @required this.text,
    @required this.color,
    @required this.ativo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: ativo ? Colors.green : color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: ativo ? FontWeight.bold : FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
