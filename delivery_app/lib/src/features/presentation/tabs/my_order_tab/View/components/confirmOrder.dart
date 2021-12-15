import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/popular_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({Key? key}) : super(key: key);

  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  bool isActive1 = false;
  bool isActive2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            )),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 15),
                child: FaIcon(
                  FontAwesomeIcons.bell,
                ),
              ),
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              _map(
                context,
              ),
              SizedBox(
                height: 20,
              ),
              _listItem(context, populars_data[0], '\$15.00', '1'),
              _listItem(context, populars_data[1], '\$28.00', '1'),
              _listItem(context, populars_data[2], '\$20.00', '2'),
              _listItem(context, populars_data[3], '\$30.00', '3'),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                headerText(
                    text: 'Payment Method',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                headerText(
                    text: 'Add New',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: primary1),
              ]),
               SizedBox(
                height: 20,
              ),
              _payment('assets/cash.png', 'Cash', 'Pay with Cash',
                  isActive1, () {
                setState(() {
                  isActive1 = !isActive1;
                  isActive2 = false;
                });
              }),
              SizedBox(
                height: 20,
              ),
              _payment('assets/creditcard.png', 'Credit Card',
                  'Pay with Visa or MasterCard', isActive2, () {
                setState(() {
                  isActive2 = !isActive2;
                  isActive1 = false;
                });
              }),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.8, color: placeholder),
                    bottom: BorderSide(width: 0.8, color: placeholder),
                  ),
                ),
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.moneyBillWave,
                    color: primary1,
                  ),
                  title: Text(
                    'Add Promo Coden',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  trailing: FaIcon(FontAwesomeIcons.angleRight),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _itemInRow('Item Total', '\$93.00', Colors.black, 17),
              SizedBox(
                height: 10,
              ),
              _itemInRow('Item Total', '\$13.00', Colors.black, 17),
              SizedBox(
                height: 10,
              ),
              _itemInRow('Delivery Free', 'Free', primary, 17),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.8, color: placeholder),
                      bottom: BorderSide(width: 0.8, color: placeholder),
                    ),
                  ),
                  child: _itemInRow('Total', '\$90.00', Colors.black, 28)),
              SizedBox(
                height: 20,
              ),
              _buttonConfirmOrder(context, '\$90.00'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _map(
    BuildContext context,
  ) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        width: 65,
                        height: 65,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/map.png'),
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
                                  text: 'Deliver To: Home',
                                  color: Colors.black,
                                  fontSize: 17)),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            //alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(bottom: 5.0),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.mapMarkedAlt,
                                  color: gris,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'The Duke Of Wellington',
                                  style: TextStyle(
                                      color: gris,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 7),
                  child: Text(
                    'Change',
                    style: TextStyle(
                        color: primary1,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget _itemInRow(String text1, String text2, Color color, double fontsize) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      headerText(
          text: text1,
          fontSize: fontsize,
          fontWeight: FontWeight.w500,
          color: color),
      headerText(
          text: text2,
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          color: color),
    ]);
  }

  Widget _payment(
      String image, String title, String descript, bool isActive, func) {
    return Container(
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: primary2,
        //     blurRadius: 4,
        //     offset: Offset(4, 5), // Shadow position
        //   ),
        // ],
        borderRadius: BorderRadius.circular(30),
        color: smoke,
      ),
      child: ListTile(
          onTap: func,
          leading: Image(
            width: 65,
            height: 65,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(
                  text: title,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
              headerText(
                  text: descript,
                  color: greytwo,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ],
          ),
          trailing: isActive
              ? FaIcon(
                  FontAwesomeIcons.checkCircle,
                  color: isActive ? orange : gris,
                )
              : Text('')),
    );
  }

  Widget _buttonConfirmOrder(context, String charge) {
    return Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: primary,
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.only(right: 16, left: 16),
            child: headerText(
                text: "Confirm Order",
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: white),
          ),
        ));
  }

  Widget _listItem(
      BuildContext context, populars_data, String charge, String count) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 8,
          bottom: 8,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                        image: AssetImage(populars_data["image"]),
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
                                  text: populars_data["name"],
                                  color: Colors.black,
                                  fontSize: 17)),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            //alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              charge,
                              style: TextStyle(
                                  color: primary1,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: placeholderBg,
                  ),
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 16, left: 16),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.minus,
                        color: greyone,
                        size: 12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      headerText(
                          text: count.toString(),
                          color: greyone,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.plus,
                        color: primary1,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
