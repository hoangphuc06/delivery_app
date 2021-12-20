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
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    headerTitle,
                    style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(
                    headerSubTitle,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.justify,
                  )
                ),
                doneButton,
              ],
            ),
          ),
        );
      });
}
