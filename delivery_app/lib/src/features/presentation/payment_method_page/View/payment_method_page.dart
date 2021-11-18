import 'package:delivery_app/src/colors/colors.dart';
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
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back_ios)),
        backgroundColor: white,
        title: headerText(
            text: 'Payment Method',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Customize your payment method",
                          style: TextStyle(
                              color: greyone,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: placeholder,
                    thickness: 1.5,
                    height: 30,
                  ),
                ),
                Container(
                  height: 170,
                  width: Helper.getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: placeholderBg,
                    boxShadow: [
                      BoxShadow(
                        color: placeholder.withOpacity(0.5),
                        offset: Offset(0, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
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
                              color: orange,
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
                                      color: orange,
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    StadiumBorder(),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(orange)),
                              onPressed: () {},
                              child: Text("Delete Card"),
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
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(orange),
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
                                height: Helper.getScreenHeight(context) * 0.7,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(
                                            Icons.clear,
                                          ),
                                        )
                                      ],
                                    ),
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
                                        "card Number",
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
                                          Text("Expiry"),
                                          SizedBox(
                                            height: 50,
                                            width: 100,
                                            child: _customTextInput(
                                              "MM",
                                              const EdgeInsets.only(left: 35),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50,
                                            width: 100,
                                            child: _customTextInput(
                                              "YY",
                                              const EdgeInsets.only(left: 40),
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
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: SizedBox(
                                        height: 50,
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(orange),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                ),
                                                SizedBox(width: 40),
                                                Text("Add Card"),
                                                SizedBox(width: 40),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text("Add Another Credit/Debit Card"),
                        ],
                      )),
                ),
              ],
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
