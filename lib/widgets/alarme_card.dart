import 'package:flutter/material.dart';
import 'package:minimal_alarm/utils/colors.dart';

class AlarmeCard extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  AlarmeCard({
    @required this.color,
    this.height = 116,
    this.width = 144,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
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
            Text(
              'DSTQQSS',
              style: TextStyle(
                fontSize: 13,
                color: textColor.withOpacity(0.5),
                fontWeight: FontWeight.w900,
                letterSpacing: 10,
              ),
            ),
            Column(
              children: [
                Text(
                  '08:00',
                  style: TextStyle(
                    fontSize: 25.5,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Minhas tarefas diárias',
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
    );
  }
}
