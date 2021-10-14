import 'package:flutter/material.dart';

Widget buttonDone(BuildContext context, String lableButton) {
  return Container(
    width: 370.0,
    height: 50.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      child: Text(lableButton, style: TextStyle(color: Colors.white, fontSize: 17.0),),
      onPressed: () {
        Navigator.pop(context);
      },
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
    ),
  );
}