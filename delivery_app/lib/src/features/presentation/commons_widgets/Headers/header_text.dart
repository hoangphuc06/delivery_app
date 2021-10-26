import 'package:flutter/material.dart';

Widget headerText(
    {String text = "",
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 20}) {
  return Text(
    text,
    style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
  );
}
