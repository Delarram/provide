import 'package:flutter/material.dart';

class NeoText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;



  NeoText(
      {required this.text,
      required this.size,
      required this.fontWeight,
      required this.color,

     });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        text,
        style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,

        ),
      ),
    );
  }
}
