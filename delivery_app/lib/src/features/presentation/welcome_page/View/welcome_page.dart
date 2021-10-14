import 'dart:ui';

import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
               image: AssetImage('assets/ic_welcome.png')
             )
           ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText('DELIVERED FAST FOOD TO YOUR DOOR',Colors.white,FontWeight.bold,45.0),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the right restaurant near you.',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17.0),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                child: RaisedButton(
                  child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    Navigator.pushNamed(context, "login");
                  },
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  color: Theme.of(context).buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/ic_fb.png'), height: 20.0, width: 20.0,),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Connect with Facebook',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
