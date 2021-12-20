import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/burger_data.dart';
import 'package:delivery_app/src/features/data/chicken_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/confirmOrder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnComingPage extends StatefulWidget {
  const OnComingPage({Key? key}) : super(key: key);

  @override
  _OnComingPageState createState() => _OnComingPageState();
}

class _OnComingPageState extends State<OnComingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
         // actions: [
         //    Column(
         //      mainAxisAlignment: MainAxisAlignment.center,
         //      crossAxisAlignment: CrossAxisAlignment.center,
         //      children: [
         //        Container(
         //          padding: EdgeInsets.only(right: 15),
         //          child: FaIcon(
         //            FontAwesomeIcons.bell,
         //          ),
         //        ),
         //      ],
         //    )
         //  ],
        centerTitle: true,
      ),
     
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              _listItem(context, burgers_data[0], '1'),
              _listItem(context, burgers_data[1], '1'),
              _listItem(context, chickens_data[2], '1'),
              _listItem(context, chickens_data[3], '1'),
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
              _itemInRow('Item Total', '398.000đ', Colors.black, 17),
              SizedBox(
                height: 10,
              ),
              _itemInRow('Discount', '48.000đ', Colors.black, 17),
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
                  child: _itemInRow('Total', '350.000đ', Colors.black, 28)),
              SizedBox(
                height: 20,
              ),
              _map(
                context,
              ),
              SizedBox(
                height: 20,
              ),
              _buttonCheckOut(context, '350.000đ'),
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
                        image: AssetImage('assets/ap.png'),
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

  Widget _buttonCheckOut(context, String charge) {
    return Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: primary,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConfirmOrderPage()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.opencart,
                      color: white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    headerText(
                        text: "Checkout",
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: white),
                  ],
                ),
                headerText(
                    text: charge,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: white)
              ],
            ),
          ),
        ));
  }

  Widget _listItem(BuildContext context, populars_data, String count) {
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
                              populars_data['price']+'đ',
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
                GestureDetector(
                  onTap: ()=>print('tasda'),
                  child: Container(
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
                        GestureDetector(
                          onTap: (){print('object');},
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: primary1,
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
