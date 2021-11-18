import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

import '../Headers/header_text.dart';

Future showAlertDialog(BuildContext context, String imagePath,
    String headerTitle, String headerSubTitle, Widget doneButton) async {
  await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  width: 130,
                  height: 130,
                  alignment: Alignment.center,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: headerText(
                      text: headerTitle, color: primaryColor, fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    headerSubTitle,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                doneButton,
              ],
            ),
          ),
        );
      });
}
