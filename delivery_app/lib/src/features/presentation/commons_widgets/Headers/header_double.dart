import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/colors.dart';

Widget headerDoubleText(
    {required String textHeader, required String textAction}) {
  return Container(
    child: Row(
      children: [
        headerText(text: textHeader, fontSize: 20),
        Spacer(),
        GestureDetector(
            child: headerText(
                text: textAction,
                color: orange,
                fontSize: 15,
                fontWeight: FontWeight.w500))
      ],
    ),
  );
}
