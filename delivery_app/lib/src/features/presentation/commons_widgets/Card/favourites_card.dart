import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
//colors
import 'package:delivery_app/src/colors/colors.dart';

Widget favouritesCard(
  BuildContext context,
  ImageProvider<Object> image,
  String title,
  String subtitle,
  String review,
  String ratings,
  bool hasActionButton, {
  double marginTop = 15.0,
  double marginRight = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 0.0,
  String buttonText = 'Delivery',
  bool isFavourite = false,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBottom,
      left: marginLeft,
    ),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    child: Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child:
                Image(width: 80, height: 80, fit: BoxFit.cover, image: image)),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          text: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavourite ? rosa : Colors.grey[300],
                      ))
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      text: subtitle,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16,
                  ),
                  headerText(
                      text: review,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  headerText(
                      text: ratings,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    width: 90,
                    height: 25.0,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: orange,
                      textColor: Colors.white,
                      child: headerText(
                          text: buttonText,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
