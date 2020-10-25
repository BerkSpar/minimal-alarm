import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minimal_alarm/pages/home/home_controller.dart';
import 'package:minimal_alarm/utils/colors.dart';
import 'package:minimal_alarm/widgets/alarme_dialog.dart';
import 'package:minimal_alarm/widgets/button_widget.dart';
import 'package:material_clock/material_clock.dart';
import 'package:minimal_alarm/widgets/meus_alarmes_widget.dart';

class HomeScreen extends StatelessWidget {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: MeusAlarmesWidget(
              alarmes: controller.alarmes,
            ),
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
                      function: () {
                        showDialog(
                          context: context,
                          child: AlarmeDialog(),
                        );
                      },
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
                    Observer(builder: (context) {
                      return Text(
                        controller.now.format(context),
                        style: TextStyle(
                          fontSize: 48,
                          color: textColor,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    }),
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
