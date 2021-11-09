import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  // const EmptyView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        title: headerText(
            text: 'My Order',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216,
                height: 216,
                image: AssetImage('assets/ic_change_password.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: headerText(
                    text: 'Cart Empty',
                    color: gris,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: headerText(
                      text:
                          'Good food is always cooking! Go ahead, order some yummy items from the menu.',
                      textAlign: TextAlign.center,
                      color: gris,
                      fontSize: 17,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
