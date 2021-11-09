import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

Widget popularesCard(
    {BuildContext? context, String? image, bool? hasActButton}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: AssetImage(image!),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      child: headerText(
                          text: "Andy and Cindy's Dinner",
                          color: Colors.black,
                          fontSize: 17)),
                  Container(
                    //alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "87 Botsford Cicrle Apt",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amarillo,
                        size: 16.0,
                      ),
                      Text("4.5",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text("(300 ratings)",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13)),
                      ),
                      Container(
                        width: 110,
                        height: 18,
                        margin: EdgeInsets.only(left: 35),
                        child: hasActButton!
                            ? createButton(
                                func: () {},
                                labelButton: "Delivery",
                                labelFontSize: 11.0,
                              )
                            : Text(""),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}
