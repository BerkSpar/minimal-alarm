import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';
import 'package:minimal_alarm/widgets/alarme_card.dart';
import 'package:minimal_alarm/widgets/alarme_dialog.dart';
import '../shared/models/alarme.dart';

class MeusAlarmesWidget extends StatelessWidget {
  final double height;
  final double width;
  final List<Alarme> alarmes;

  MeusAlarmesWidget({
    this.height = 132.0,
    this.width = 160.0,
    @required this.alarmes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Meus Alarmes',
            style: TextStyle(
              fontSize: 48,
              color: textColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(
          height: height,
          child: ListView.separated(
            padding: EdgeInsets.only(
              bottom: 16,
              top: 8,
            ),
            itemCount: alarmes.length,
            separatorBuilder: (_, index) {
              return SizedBox(width: 16);
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 0,
                  right: index == 3 ? 16 : 0,
                ),
                child: AlarmeCard(
                  onTap: () {
                    showDialog(
                      context: context,
                      child: AlarmeDialog(
                        alarme: alarmes[index],
                      ),
                    );
                  },
                  height: height,
                  width: width,
                  alarme: alarmes[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
