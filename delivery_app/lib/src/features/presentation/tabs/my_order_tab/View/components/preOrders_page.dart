import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/chicken_data.dart';
import 'package:delivery_app/src/features/data/drinks_data.dart';
import 'package:delivery_app/src/features/data/fast_data.dart';
import 'package:delivery_app/src/features/data/kfc_popular_data.dart';
import 'package:delivery_app/src/features/data/popular_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreOrdersPage extends StatefulWidget {
  const PreOrdersPage({Key? key}) : super(key: key);

  @override
  _PreOrdersPageState createState() => _PreOrdersPageState();
}

class _PreOrdersPageState extends State<PreOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
              child: Text(
                '15/12/2021',
                style: TextStyle(
                    color: greyone, fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            _listItem(
                context,
                chickens_data[0],
                '15/12/2021 . 11:30'),
            _listItem(context, fast_data[2], '15/12/2021 . 11:30'),
            _listItem(context, drinks_data[1], '15/12/2021 . 11:30'),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(width: 0.5, color: greyone))),
              padding:
                  EdgeInsets.only(top: 16, bottom: 12, left: 20, right: 20),
              child: Text(
                '14/12/2021',
                style: TextStyle(
                    color: greyone, fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            _listItem(
                context,
                chickens_data[3],
                '15/12/2021 . 11:30'),
            _listItem(context, fast_data[3], '15/12/2021 . 11:30'),
            _listItem(context, drinks_data[1], '15/12/2021 . 11:30'),
          ],
        ),
      ),
    );
  }

  Widget _listItem(BuildContext context, data, String time) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                        image: AssetImage(data["image"]),
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
                                  text: data["name"],
                                  color: Colors.black,
                                  fontSize: 17)),
                          // Container(
                          //   margin: EdgeInsets.only(top: 4),
                          //   padding: EdgeInsets.all(4),
                          //   decoration: BoxDecoration(
                          //       color: rosa,
                          //       borderRadius: BorderRadius.circular(20)
                          //   ),
                          //   child: Text(
                          //     time,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 10,
                          //         fontWeight: FontWeight.bold
                          //     ),
                          //   ),
                          // ),
                          Container(
                            //alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              data["descr"],
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
                                  data["price"] + " VNĐ",
                                  style: data["discount"]== "0" ? TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 15):
                                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15, fontStyle: FontStyle.italic, decoration: TextDecoration.lineThrough),

                                ),
                              ),
                              data["discount"]!= "0" ?
                              Container(
                                margin: EdgeInsets.only(left: 7.0),
                                child: Text(
                                    data["discount"] + " VNĐ",
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
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: placeholderBg,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      headerText(
                          text: "1",
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: primary,
                  elevation: 0.5,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.redo,
                          color: white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        headerText(
                            text: 'Re-order',
                            color: white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: placeholderBg,
                  elevation: 0.5,
                  child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: headerText(
                        text: 'Get Help',
                        color: greyone,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
