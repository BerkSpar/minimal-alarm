import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';

import '../shared/models/alarme.dart';
import '../utils/colors.dart';

class AlarmeCard extends StatelessWidget {
  final double height;
  final double width;
  final Function onTap;
  final Alarme alarme;

  AlarmeCard({
    @required this.onTap,
    @required this.alarme,
    this.height = 116,
    this.width = 144,
  });

  Widget _getDiasSemana() {
    List<Widget> _list = List.generate(7, (i) {
      String dia = '';

      switch (i) {
        case 0:
          dia = 'D';
          break;
        case 1:
        case 5:
        case 6:
          dia = 'S';
          break;
        case 2:
          dia = 'T';
          break;
        case 3:
        case 4:
          dia = 'Q';
          break;
      }

      return Text(
        dia,
        style: TextStyle(
          fontWeight:
              alarme.diaSemana.contains(i) ? FontWeight.w900 : FontWeight.w400,
          letterSpacing: 10,
          color: textColor,
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColors[alarme.colorIndex],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _getDiasSemana(),
              Column(
                children: [
                  Text(
                    alarme.time.format(context),
                    style: TextStyle(
                      fontSize: 25.5,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    alarme.descricao,
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor.withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
