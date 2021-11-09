import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

const shape = StadiumBorder();

Widget createButton({
  BuildContext? context,
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  ImageProvider<Object>? icon,
  String? labelButton,
  Color labelButtonColor = Colors.white,
  Color? buttonColor,
  double labelFontSize = 15.0,
  OutlinedBorder? shape = shape,
  required Function func,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raiseButtonWithIcon(radius, icon!, labelButton!, labelButtonColor,
            labelFontSize, buttonColor!, func, shape!)
        : _raiseButtonNotIcon(radius, labelButton!, labelButtonColor,
            labelFontSize, buttonColor!, func, shape!),
  );
}

Widget _raiseButtonWithIcon(
  double radius,
  ImageProvider<Object> icon,
  String labelButton,
  Color labelButtonColor,
  double labelFontSize,
  Color color,
  func,
  OutlinedBorder shape,
) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      shape: shape,
      primary: color,
      elevation: 0.5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon,
          height: 20.0,
          width: 20.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: headerText(
            text: labelButton,
            color: labelButtonColor,
            fontSize: labelFontSize,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget _raiseButtonNotIcon(
  double radius,
  String labelButton,
  Color color,
  double labelFontSize,
  Color labelButtonColor,
  func,
  OutlinedBorder shape,
) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      shape: shape,
      primary: color,
      elevation: 0.5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: headerText(
              text: labelButton,
              color: labelButtonColor,
              fontSize: labelFontSize,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
