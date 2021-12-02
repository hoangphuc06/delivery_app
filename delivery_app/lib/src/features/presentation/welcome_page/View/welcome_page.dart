import 'dart:ui';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bg/1.jpg'))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(
                  textAlign: TextAlign.start,
                    text: 'DELIVERED FAST FOOD TO YOUR DOOR',
                    color: Colors.white,
                    fontSize: 45.0),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the right restaurant near you.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0),
                ),
              ),
              createButton(
                  context: context,
                  func: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  labelButton: 'Log in',
                  buttonColor: orange,
                  icon: AssetImage('assets/ic_fb.png')),
              createButton(
                  context: context,
                  func: () => print('goToFacebook'),
                  isWithIcon: true,
                  labelButton: 'Connect with facebook',
                  buttonColor: fbButtonColor,
                  icon: AssetImage('assets/ic_fb.png')
              ),
            ],
          )
        ],
    )
    );
  }
}