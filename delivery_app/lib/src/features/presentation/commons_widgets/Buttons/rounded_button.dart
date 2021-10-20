import 'dart:ffi';

import 'package:flutter/material.dart';

Widget roundedButton({
  BuildContext? context,
  double width=350.0,
  double height=45.0,
  double radius=20.0,
  bool isWithIcon=false,
  ImageProvider<Object>? icon,
  String? lableButton,
  Color? color,
  required Function func,
}) {
  return  Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon 
        ? _raiseButtonWithIcon(radius,icon!,lableButton!,color!,func)
        : _raiseButtonNotIcon(radius,lableButton!,color!,func) ,
  );
}

Widget _raiseButtonWithIcon(double radius,ImageProvider<Object> icon, String lableButton, Color color, func){
  return RaisedButton(
      color:  color,
      onPressed: func,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: icon, height: 20.0, width: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              lableButton,
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          )
        ],
      ),
  );
}

Widget _raiseButtonNotIcon(double radius,String labelButton,Color color, func){
  return RaisedButton(
      onPressed: func,
      color:  color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              labelButton,
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          )
        ],
      ),
  );
}