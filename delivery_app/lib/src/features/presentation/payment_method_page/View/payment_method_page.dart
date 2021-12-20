import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/utils/Extensions/helper.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool isLink = false;
  bool isHide = true;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: white,
        title: headerText(
            text: 'Payment Method',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Text(
          //           "Customize your payment method",
          //           style: TextStyle(
          //               color: greyone,
          //               fontWeight: FontWeight.bold,
          //               fontSize: 17),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Divider(
          //     color: placeholder,
          //     thickness: 1.5,
          //     height: 30,
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            height: 170,
            width: Helper.getScreenWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(210, 211, 215, 1.0),
                    //offset: Offset(0, 0),
                    blurRadius: 5.0,
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cash/Card on delivery",
                        style: TextStyle(
                            color: greyone, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check,
                        color: green,
                      )
                    ],
                  ),
                  Divider(
                    color: placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset(
                          Helper.getAssetName("visa2.png"),
                        ),
                      ),
                      Text("**** ****"),
                      Text("2187"),
                      OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: green,
                              ),
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(orange)),
                        onPressed: () {},
                        child: Text("Delete Card", style: TextStyle(color: green),),
                      )
                    ],
                  ),
                  Divider(
                    color: placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Other Methods",
                        style: TextStyle(
                            color: greyone, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            height: 170,
            width: Helper.getScreenWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(210, 211, 215, 1.0),
                    //offset: Offset(0, 0),
                    blurRadius: 5.0,
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cash/Card on delivery",
                        style: TextStyle(
                            color: greyone, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Divider(
                    color: placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset(
                          Helper.getAssetName("visa2.png"),
                        ),
                      ),
                      Text("**** ****"),
                      Text("0612"),
                      OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: green,
                              ),
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            ),
                            foregroundColor:
                            MaterialStateProperty.all(orange)),
                        onPressed: () {},
                        child: Text("Delete Card", style: TextStyle(color: green),),
                      )
                    ],
                  ),
                  Divider(
                    color: placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Other Methods",
                        style: TextStyle(
                            color: greyone, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          createButton(
            labelButton: "Add Credit/Debit Card",
            buttonColor: green,
            func: (){
              //Navigator.pop(context);
              _showAdd();
            }
          ),
        ],
      ),
    );
  }

  _customTextInput(String hintText, EdgeInsets edgeInsets) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      width: double.infinity,
     // height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
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

  _showAdd() => showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    isScrollControlled: true,
    isDismissible: false,
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Add Credit/Debit Card",
                      style: TextStyle(
                          color: greyone,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Divider(
                color: placeholder.withOpacity(0.5),
                thickness: 1.5,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: _customTextInput(
                "Card Number",
                const EdgeInsets.only(left: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 5,),
                  Text("Expiry", style: TextStyle(fontSize: 15, color: Colors.black,),),
                  SizedBox(
                    width: 120,
                    child: _customTextInput(
                      "MM",
                      const EdgeInsets.only(left: 20),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: _customTextInput(
                      "YY",
                      const EdgeInsets.only(left: 20),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0),
                child: _customTextInput("Security Code",
                    const EdgeInsets.only(left: 40))),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0),
                child: _customTextInput("First Name",
                    const EdgeInsets.only(left: 40))),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0),
                child: _customTextInput("Last Name",
                    const EdgeInsets.only(left: 40))),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: createButton(
                labelButton: "Add Card",
                buttonColor: green,
                func: (){

                }
              )
            )
          ],
        ),
      );
    }
  );
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
