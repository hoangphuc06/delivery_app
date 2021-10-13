import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color cl) {
  return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: cl,
        size: 30.0,
      ),
    onPressed: () {
        Navigator.pop(context);
    },
  );
}