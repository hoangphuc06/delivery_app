import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

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
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'Create an account',
                style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dateOfBirthInput(context),
              _passwordInput(context),
              _buttonSignUp(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Text(
                  "By clicking Sign up you agree to the following Terms and Conditions without reservation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0
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

Widget _usernameInput(BuildContext context)
{
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Username",
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _emailInput(BuildContext context)
{
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _phoneInput(BuildContext context)
{
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: "Phone",
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context)
{
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: "Date of Birth",
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _passwordInput(BuildContext context)
{
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}

Widget _buttonSignUp(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 50.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 17.0),),
      onPressed: () {

      },
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
    ),
  );
}

