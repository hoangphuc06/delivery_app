import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/popular_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/orderTracking/orderTrackingModel.dart';
import 'package:delivery_app/src/features/presentation/orderTracking/trackOrder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Order Tracking",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          _itemInRow('Order ID: ', '1638337707663845', gris, Colors.black, 14),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackOrder()));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.5,color: gris))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        headerText(
                            text: '10 Dec, 2021',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 5,
                        ),
                        headerText(
                            text: '10:30 Am',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 72,
                        ),
                        headerText(
                            text: '10 Dec, 2021',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 5,
                        ),
                        headerText(
                            text: '10:35 Am',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 72,
                        ),
                        headerText(
                            text: '10 Dec, 2021',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 5,
                        ),
                        headerText(
                            text: '10:40 Am',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 72,
                        ),
                        headerText(
                            text: '10 Dec, 2021',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 5,
                        ),
                        headerText(
                            text: '10:45 Am',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 72,
                        ),
                        headerText(
                            text: '10 Dec, 2021',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                        SizedBox(
                          height: 5,
                        ),
                        headerText(
                            text: '10:45 Am',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: gris),
                      ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 278,
                        width: MediaQuery.of(context).size.width / 6,
                        child: IconStepper(
                          alignment: Alignment.topCenter,
                          direction: Axis.vertical,
                          enableNextPreviousButtons: false,
                          enableStepTapping: false,
                          stepColor: orange,
                          activeStepColor: orange,
                          activeStepBorderColor: white,
                          activeStepBorderWidth: 0.0,
                          activeStepBorderPadding: 0.0,
                          lineColor: bkorange,
                          lineLength: 90.0,
                          lineDotRadius: 3.0,
                          stepRadius: 8.0,
                          icons: [
                            Icon(Icons.radio_button_checked, color: orange),
                            Icon(Icons.check, color: orange),
                            Icon(Icons.check, color: orange),
                            Icon(Icons.check, color: orange),
                            Icon(Icons.check, color: orange),
                            Icon(Icons.check, color: orange),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: bkorange),
                                child: FaIcon(
                                  FontAwesomeIcons.peopleCarry,
                                  size: 24,
                                  color: orange,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _itemInRow('Status: ', 'Deliverred', gris, orange, 14),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: bkblue),
                                child: FaIcon(
                                  FontAwesomeIcons.shippingFast,
                                  size: 22,
                                  color: blue,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _itemInRow('Status: ', 'On Thy Way', gris, blue, 14),
                          SizedBox(
                            height: 26,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Container(
                                padding: EdgeInsets.only(top:10,bottom: 10,left: 14,right: 14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: bkred),
                                child: FaIcon(
                                  FontAwesomeIcons.hourglassHalf,
                                  color: red,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _itemInRow('Status: ', 'Order Processing', gris, red, 14),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: bkgreen),
                                child: FaIcon(
                                  FontAwesomeIcons.checkDouble,
                                  color: green,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _itemInRow('Status: ', 'Confirmed', gris, green, 14),
                          SizedBox(
                            height: 28,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: bkorange),
                                child: FaIcon(
                                  FontAwesomeIcons.gift,
                                  color: orange,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _itemInRow('Status: ', 'Order Placed', gris, orange, 14),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            headerText(
                text: 'Ordered From:',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: greytwo),
            headerText(
                text: 'Sa Bi Chuong',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: orange),
          ]),
          SizedBox(
            height: 10,
          ),
          _listItem(context, populars_data[0], '\$15.00', '1'),
          SizedBox(
            height: 20,
          ),
          _itemInRow1('Item Total', '\$15.00', Colors.black, 17),
          SizedBox(
            height: 20,
          ),
          _itemInRow1('Discount', '\$0.00', greytwo, 17),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(bottom:10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5,color: gris))
            ),
            child: _itemInRow1('Delivery Fee', 'Free', greytwo, 17)),
          SizedBox(
            height: 15,
          ),
          _itemInRow1('Total', '\$15.00', greytwo, 17),
          SizedBox(
            height: 20,
          ),
          _itemInRow1('Payment Method ', 'Cash', greytwo, 17),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }

  Widget _itemInRow(
      String text1, String text2, Color color1, Color color2, double fontsize) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      headerText(
          text: text1,
          fontSize: fontsize,
          fontWeight: FontWeight.w500,
          color: color1),
      headerText(
          text: text2,
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          color: color2),
    ]);
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: placeholderBg,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      headerText(
                          text: count.toString(),
                          color: blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget _itemInRow1(String text1, String text2, Color color, double fontsize) {
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
}
