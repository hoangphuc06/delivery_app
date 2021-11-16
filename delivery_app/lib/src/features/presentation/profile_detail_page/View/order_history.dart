import 'dart:js';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/favourites_card.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

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
                text: 'Order History',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                OrderDetailCard(context, "Confirm", "Pho Tai Nam", false, "4.5",
                    Colors.grey),
                OrderDetailCard(context, "Shipping", "Pho Tai Nam", true, "4.8",
                    Colors.green),
                OrderDetailCard(
                    context, "Delivered", "Pho tai Nam", true, "4.8", orange),
              ]),
            )
          ]))
        ],
      ),
    );
  }
}

Widget OrderDetailCard(BuildContext context, String status, String name,
    bool isFavorite, String rating, Color color) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
      right: 10,
      bottom: 10,
      left: 10,
    ),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
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
              image: NetworkImage(
                  'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/hu-tieu-gio-heo.jpg'),
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
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          text: name,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 15.0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavorite ? rosa : Colors.grey[300],
                      ))
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      text: "20 Nguyen Chi Thanh st",
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
              Row(
                children: [
                  headerText(
                      text: rating,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    width: 90,
                    height: 25.0,
                    child: RaisedButton(
                      onPressed: () =>
                          {if (status == "Confirm") _confirm(context)},
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: color,
                      textColor: Colors.white,
                      child: headerText(
                          text: status,
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

Future _confirm(
  BuildContext context,
) async {
  await showAlertDialog(
      context,
      'assets/cancel.png',
      "Cancel Your Order",
      "Are you sure you want to cancel this request?",
      //_doneButton(context,'Enable Location')
      createButton(
          context: context,
          labelButton: 'Cancel Order',
          buttonColor: orange,
          func: () {}));
}
