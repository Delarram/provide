import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final double? lineHeight;

  const TextView(
      {Key? key,
      required this.title,
      required this.fontSize,
      this.textColor,
      this.fontWeight,
      this.maxLine,
      this.textDecoration,
      this.textAlign,
      this.lineHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,style: TextStyle(
      color: textColor ?? Theme.of(context).textTheme.bodyText2!.color!,
      fontWeight: fontWeight,
      decoration: textDecoration,
      fontSize: fontSize,
      height: lineHeight,
    ),
      textAlign: textAlign,
      maxLines: maxLine,
    );
  }
}
