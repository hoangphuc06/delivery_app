import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(65));
const boxShadow = [
  BoxShadow(
      color: Color.fromRGBO(210, 211, 215, 1),
      offset: Offset(0, 5),
      blurRadius: 10)
];

Decoration createBoxDecorationWithShadow(
    {BorderRadiusGeometry borderRadiusGeometry = borderRadius,
    Color containerColor = Colors.white,
    List<BoxShadow> boxShadow = boxShadow}) {
  return BoxDecoration(
      borderRadius: borderRadius, color: containerColor, boxShadow: boxShadow);
}
