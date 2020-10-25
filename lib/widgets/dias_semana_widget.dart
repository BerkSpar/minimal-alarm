import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';

class DiasSemanaWidget extends StatefulWidget {
  final List<int> diasSemana;

  DiasSemanaWidget({
    @required this.diasSemana,
  });

  @override
  _DiasSemanaWidgetState createState() => _DiasSemanaWidgetState();
}

class _DiasSemanaWidgetState extends State<DiasSemanaWidget> {
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
        ativo: widget.diasSemana.contains(id),
        onTap: () {
          if (widget.diasSemana.contains(id)) {
            widget.diasSemana.remove(id);
          } else {
            widget.diasSemana.add(id);
          }

          this.setState(() {});
        },
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
  final Function onTap;

  DiaButton({
    @required this.text,
    @required this.onTap,
    @required this.color,
    @required this.ativo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              color: ativo ? Colors.white : Colors.black,
              fontWeight: ativo ? FontWeight.bold : FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
