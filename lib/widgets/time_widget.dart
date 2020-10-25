import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import '../utils/colors.dart';

class TimeWidget extends StatelessWidget {
  final Function(TimeOfDay) onChange;
  final TimeOfDay time;

  TimeWidget({
    @required this.time,
    @required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          showPicker(
            context: context,
            is24HrFormat: true,
            value: time,
            onChange: onChange,
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time.format(context),
            style: TextStyle(
              fontSize: 48,
              color: textColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.unfold_more,
            color: textColor,
            size: 32,
          ),
        ],
      ),
    );
  }
}
