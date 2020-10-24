import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';
import 'package:minimal_alarm/widgets/alarme_card.dart';

class MeusAlarmesWidget extends StatelessWidget {
  final double height;
  final double width;
  final String title;

  MeusAlarmesWidget({
    this.height = 132.0,
    this.width = 160.0,
    this.title = 'Meus Alarmes',
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
            title,
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
            itemCount: 4,
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
                  height: height,
                  width: width,
                  color: cardColors[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
