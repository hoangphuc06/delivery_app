import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.black
      )
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image(image: AssetImage('assets/ic_login.jpg'),width: double.infinity, height: 350.0, fit: BoxFit.cover,),
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: backButton(context, Colors.white),
                  )
                ],
              ),
             Transform.translate(
               offset: Offset(0.0, -20.0),
               child: Container(
                 width: double.infinity,
                 height: 500,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20.0)
                 ),
                 child: Padding(
                   padding: EdgeInsets.all(20.0),
                   child: Center(
                     child: Column(
                       children: [
                         Text(
                           "Welcome Back",
                           style: TextStyle(
                             color: Theme.of(context).primaryColor,
                             fontWeight: FontWeight.bold,
                             fontSize: 30.0
                           ),
                         ),
                         Text(
                           "Login to your account",
                           style: TextStyle(
                               color: gris,
                               fontWeight: FontWeight.w500,
                               fontSize: 17.0
                           ),
                         ),
                         _emailInput(),
                         _passwordlInput(),
                         _buttonLogin(context),
                         Container(
                           margin: EdgeInsets.only(top: 30.0),
                           child: GestureDetector(
                             onTap: () {
                               Navigator.pushNamed(context, "forgot_password");
                             },
                             child: Text(
                               'Forgot your password?',
                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15.0),
                             ),
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 30.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Don't have an account? ",
                                 style: TextStyle(color: gris, fontWeight: FontWeight.w500, fontSize: 15.0),
                               ),
                               GestureDetector(
                                 onTap: () {
                                   Navigator.pushNamed(context, "sign_up");
                                 },
                                 child: Container(
                                   margin: EdgeInsets.symmetric(horizontal: 10.0),
                                   child: Text(
                                     'Sign up',
                                     style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.w500, fontSize: 15.0),
                                   ),
                                 ),
                               ),
                             ],
                           )
                         )
                       ],
                     ),
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        )
      ),
    ),
  );
}

Widget _passwordlInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 50.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
      child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 17.0),),
      onPressed: () {
        Navigator.pushNamed(context, "tabs");
      },
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
    ),
  );
}