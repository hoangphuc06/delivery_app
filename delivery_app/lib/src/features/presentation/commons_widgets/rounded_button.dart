import 'package:flutter/material.dart';

Widget roundedButton({
  required BuildContext context,
  double width=350.0,
  double height=45.0,
  double radius=20.0,
  bool isWithIcon=false,
  required ImageProvider<Object> icon,
  required String lableButton,
  required Color color,
  required  func,
}) {
  return  Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon 
        ? _raiseButtonWithIcon(radius,icon,lableButton,color,func) 
        : _raiseButtonNotIcon(radius,lableButton,color,func) ,
  );
}

Widget _raiseButtonWithIcon(double radius,ImageProvider<Object> icon, String lableButton, Color color,Function func){
  return RaisedButton(
      onPressed: func(),
      color:  color,
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

Widget _raiseButtonNotIcon(double radius,String labelButton,Color color,Function func){
  return RaisedButton(
      onPressed: func(),
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