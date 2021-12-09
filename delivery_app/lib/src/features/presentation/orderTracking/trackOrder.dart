import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/utils/Extensions/helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  bool isLink = false;
  bool isHide = true;
  bool isSwitched = false;
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
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Track Order",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/mapD.png'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ElevatedButton(
                    
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(orange),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: Helper.getScreenHeight(context) * 0.5,
                              child: Stack(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        headerText(
                                            text: 'Trip Route',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: headerText(
                                                  text:
                                                      'Cơm Tấm Sà Bì Chưởng - Trần Bình Trọng',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              height: 80,
                                              width: Helper.getScreenWidth(
                                                      context) *
                                                  0.4,
                                              child: IconStepper(
                                                alignment: Alignment.topCenter,
                                                enableNextPreviousButtons:
                                                    false,
                                                enableStepTapping: false,
                                                stepColor: blue,
                                                activeStepColor: blue,
                                                activeStepBorderColor: white,
                                                activeStepBorderWidth: 0.0,
                                                activeStepBorderPadding: 0.0,
                                                lineColor: bkblue,
                                                lineLength: 90.0,
                                                lineDotRadius: 3.0,
                                                stepRadius: 5,
                                                icons: [
                                                  Icon(
                                                      Icons
                                                          .radio_button_checked,
                                                      color: blue),
                                                  Icon(Icons.check,
                                                      color: blue),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: headerText(
                                                  text: 'KTX Khu A ĐHQG TP.HCM',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.shippingFast,
                                                  color: blue,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                headerText(
                                                    text: '22.8 Km',
                                                    color: greytwo,
                                                    fontSize: 14)
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: blue,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                headerText(
                                                    text: '30 Minutes',
                                                    color: greytwo,
                                                    fontSize: 14)
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(3),
                                                  decoration: ShapeDecoration(
                                                      color: bkblue,
                                                      shape: CircleBorder()),
                                                  child: CircleAvatar(
                                                    radius: 35,
                                                    backgroundImage: AssetImage(
                                                        'assets/avt.jpg'),
                                                    foregroundColor: blue,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    headerText(
                                                        text: 'Driver',
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    Container(
                                                      width: 100,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color: primary1,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color: primary1,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color: primary1,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color: primary1,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color: primary1,
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: red,
                                              ),
                                              width: 80,
                                              padding: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              child: Center(
                                                child: headerText(
                                                    text: 'Call',
                                                    color: white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: green,
                                              ),
                                              width: 80,
                                              padding: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              child: Center(
                                                child: headerText(
                                                    text: 'Chat',
                                                    color: white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: primary1,
                                      ),
                                      width: Helper.getScreenWidth(context),
                                      height: 70,
                                      child: Center(child: headerText(text: 'Order Details',fontWeight: FontWeight.w500,fontSize: 20,color: white)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        headerText(
                            text: 'Order Details',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: white),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _customTextInput(String hintText, EdgeInsets edgeInsets) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: placeholder,
          ),
          contentPadding: edgeInsets,
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }
}

Widget _buttonCheckoutResume(context) {
  return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: orange,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              child: headerText(
                  text: "Add Another Credit/Debit Card",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: white),
            ),
          ],
        ),
      ));
}
