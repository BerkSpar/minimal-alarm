import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_alarm/widgets/dias_semana_widget.dart';
import 'package:minimal_alarm/widgets/time_widget.dart';

import '../shared/models/alarme.dart';

class AlarmeDialog extends StatefulWidget {
  final Alarme alarme;

  AlarmeDialog({
    this.alarme,
  });

  @override
  _AlarmeDialogState createState() => _AlarmeDialogState();
}

class _AlarmeDialogState extends State<AlarmeDialog> {
  TimeOfDay _time = TimeOfDay.now();
  List<int> _diasSemana = [];
  TextEditingController _descricaoCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _descricaoCtrl.text = widget.alarme?.descricao ?? '';
  }

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
                TimeWidget(
                  onChange: (time) {
                    this.setState(() {
                      _time = time;
                    });
                  },
                  time: widget.alarme?.time ?? _time,
                ),
                SizedBox(height: 16),
                DiasSemanaWidget(
                  diasSemana: widget.alarme?.diaSemana ?? _diasSemana,
                ),
                SizedBox(height: 24),
                TextFormField(
                  controller: _descricaoCtrl,
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
          onPressed: () {
            Navigator.of(context).pop();
          },
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
