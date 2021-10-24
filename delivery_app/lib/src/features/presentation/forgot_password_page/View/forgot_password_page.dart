import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText('Forgot password', primaryColor, FontWeight.bold, 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will receive the link to create the new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15.0),
                ),
              ),
              _emailInput(),
              
              roundedButton(
                 context: context,
                  func: ()=>_showAlerta(context),
                 icon: AssetImage('assets/ic_change_password.png'), 
                 lableButton: 'Send', 
                 color: orange),

              
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
          hintText: 'Your email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )
      ),
    ),
  );
}


void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      'assets/ic_change_password.png',
      "Your password has been reset",
      "You'll shortly receive an email with a code to set up a new password.",
    
      roundedButton(
        context: context,
        func: (){
          Navigator.pushNamed(context, 'login');
        },
        icon:  AssetImage('assets/ic_change_password.png'), 
        lableButton: 'Done', 
        color: orange),
    
       
  );
}




