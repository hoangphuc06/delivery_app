import 'package:delivery_app/src/colors/colors.dart';
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
          children: [
            _listItem(context, populars_data[0]),
            _listItem(context, populars_data[1]),
            _listItem(context, populars_data[2]),
            _listItem(context, populars_data[3]),
             _listItem(context, populars_data[3]),
              _listItem(context, populars_data[3]),
          ],
        ),
      ),
    );
  }

  Widget _listItem(BuildContext context, populars_data) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
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
                              populars_data["address"],
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
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
                    '\$ 15.00',
                    style: TextStyle(
                        color: primary1,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
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
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.redo,color: white,size: 15,),
                        SizedBox(width: 10,),
                        headerText(
                            text: 'Reorder',
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
                        padding: EdgeInsets.only(left: 30,right: 30),
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
