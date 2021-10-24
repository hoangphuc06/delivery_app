import 'package:flutter/material.dart';

Widget headerText(
    String text, Color color, FontWeight fontWeight, double fontSize,
    {textAlign = TextAlign.justify}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
  );
}
