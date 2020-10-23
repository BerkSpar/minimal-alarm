import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';
import 'package:minimal_alarm/widgets/button_widget.dart';
import 'package:material_clock/material_clock.dart';
import 'package:minimal_alarm/widgets/meus_alarmes_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: MeusAlarmesWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(
                      icon: Icons.settings,
                      function: () {},
                    ),
                    ButtonWidget(
                      icon: Icons.add,
                      function: () {},
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Column(
                  children: [
                    Clock(
                      time: DateTime.now(),
                      backgroundStyle: PaintingStyle.stroke,
                      size: 200,
                      live: true,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '18:00',
                      style: TextStyle(
                        fontSize: 48,
                        color: textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
