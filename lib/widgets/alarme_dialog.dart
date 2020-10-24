import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_alarm/utils/colors.dart';
import 'package:minimal_alarm/widgets/dias_semana_widget.dart';

class AlarmeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: 360,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  'assets/lotties/27600-balcony-leisure.json',
                  height: 200,
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      showPicker(
                        context: context,
                        is24HrFormat: true,
                        value: TimeOfDay(
                          hour: 8,
                          minute: 55,
                        ),
                        onChange: (timeOfDay) {},
                      ),
                    );
                  },
                  child: Text(
                    '08:00',
                    style: TextStyle(
                      fontSize: 48,
                      color: textColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                DiasSemanaWidget(
                  diasSemana: [],
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Ex.: Café da manhã',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                BotoesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BotoesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey.withOpacity(0.2),
          onPressed: () {},
          child: Text(
            'cancelar',
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ),
        SizedBox(width: 16),
        RaisedButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.blue,
          onPressed: () {},
          child: Text(
            'CONFIRMAR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
