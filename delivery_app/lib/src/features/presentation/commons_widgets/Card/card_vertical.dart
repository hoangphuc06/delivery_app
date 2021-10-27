import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

Widget cartVertical(
    {BuildContext? content,
    double? witdh,
    double? height,
    ImageProvider<Object>? image,
    String? title,
    String? subTitle}) {
  return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: image!,
              height: height,
              width: witdh,
              fit: BoxFit.cover,
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(top: 5),
                child: headerText(
                    text: title!, fontSize: 17, fontWeight: FontWeight.w500)),
            Container(
                margin: EdgeInsets.only(top: 5),
                child: headerText(
                    text: subTitle!,
                    color: gris,
                    fontSize: 13,
                    fontWeight: FontWeight.w400))
          ])
        ],
      ));
}
