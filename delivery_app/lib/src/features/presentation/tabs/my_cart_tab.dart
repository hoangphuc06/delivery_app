import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/burger_data.dart';
import 'package:delivery_app/src/features/data/chicken_data.dart';
import 'package:delivery_app/src/features/data/drinks_data.dart';
import 'package:delivery_app/src/features/data/rice_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/confirmOrder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCartTab extends StatefulWidget {
  const MyCartTab({Key? key}) : super(key: key);

  @override
  _MyCartTabState createState() => _MyCartTabState();
}

class _MyCartTabState extends State<MyCartTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: headerText(
            text: 'My cart',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
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
              _listItem(context, rices_data[5], '1'),
              _listItem(context, chickens_data[0], '1'),
              _listItem(context, drinks_data[2], '1'),
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
              _itemInRow('Item Total', '141.000 VNĐ', Colors.black, 17),
              SizedBox(
                height: 10,
              ),
              _itemInRow('Discount', '1.000 VNĐ', Colors.black, 17),
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
                  child: _itemInRow('Total', '140.000 VNĐ', Colors.black, 28)),
              SizedBox(
                height: 20,
              ),
              _map(
                context,
              ),
              SizedBox(
                height: 20,
              ),
              _buttonCheckOut(context, '140.000 VNĐ'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _map(BuildContext context) {
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
                        image: AssetImage('assets/map_home.png'),
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
                                  '6, Thu Duc, HCM City',
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
                        color: green,
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
                      FontAwesomeIcons.shoppingCart,
                      size: 20,
                      color: white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    headerText(
                        text: "Check out",
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
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: headerText(
                                  text: populars_data["name"],
                                  color: Colors.black,
                                  fontSize: 17)),
                          Container(
                            //alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              populars_data["descr"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                //alignment: Alignment.centerLeft,
                                //margin: EdgeInsets.only(bottom: 7.0),
                                child: Text(
                                  populars_data["price"] + " VNĐ",
                                  style: populars_data["discount"]== "0" ? TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 15):
                                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15, fontStyle: FontStyle.italic, decoration: TextDecoration.lineThrough),

                                ),
                              ),
                              populars_data["discount"]!= "0" ?
                              Container(
                                margin: EdgeInsets.only(left: 7.0),
                                child: Text(
                                    populars_data["discount"] + " VNĐ",
                                    style: TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 15)
                                ),
                              ): Container(),
                            ],
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
                        color: green,
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
