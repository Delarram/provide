import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final double height;
  final double width;
  final String labelText;
  final Color? color;
  final Icon suffixIcon;

  const CustomTextField(
      {Key? key,
      required this.height,
      required this.width,
      required this.labelText,
        required this.suffixIcon,
        this.color,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(left: 25, right: 25, bottom: 20),
      width: width,
      height: height,
      color: color,
      child:  TextField(
        decoration: InputDecoration(
         suffix:suffixIcon,
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )
        ),
      ),
    );
  }
}
