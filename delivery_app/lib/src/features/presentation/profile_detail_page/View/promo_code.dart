

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/favourites_card.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class PromoCodePage extends StatelessWidget {
  const PromoCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
            backgroundColor: Colors.white,
            title: headerText(
                text: 'Promo Code',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                CodeCard(context, "All Payments", "50%", "20-10-2021 00:00",
                    orange, 'assets/shipping.png', "ab12736"),
                CodeCard(context, "All Payments", "70%", "10-11-2021 00:00",
                    orange, 'assets/free_shipping.png', '12baysd'),
              ]),
            )
          ]))
        ],
      ),
    );
  }
}

Widget CodeCard(BuildContext context, String name, String perDiscount,
    String date, Color color, String image, String code) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
      right: 10,
      bottom: 10,
      left: 10,
    ),
    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            offset: Offset(0, 5),
            blurRadius: 10.0,
          )
        ]),
    child: Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 3.0),
                      child: headerText(
                          text: name,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  SizedBox(
                    width: 60.0,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: headerText(
                          text: perDiscount,
                          color: orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: headerText(
                        text: "Expiry:",
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: headerText(
                        text: date,
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: headerText(
                          text: code,
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0)),
                  SizedBox(width: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    width: 90,
                    height: 25.0,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: color,
                      textColor: Colors.white,
                      child: headerText(
                          text: "Copy",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
