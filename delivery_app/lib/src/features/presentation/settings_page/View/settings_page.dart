import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: white,
        title: headerText(
            text: 'Setting',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(children: [
                Icon(Icons.person, color: green),
                SizedBox(width: 10),
                Text("Account",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ]),
            ),
            const SizedBox(
              height: 5,
            ),
            buildAccountOption(context, "Change Password"),
            buildAccountOption(context, "Content Settings"),
            buildAccountOption(context, "Social"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Privacy and Security"),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                Icon(Icons.volume_up_outlined, color: green),
                SizedBox(width: 10),
                Text("Notifications",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ]),
            ),
            buildNotificationOption("Nofication", valNotify1, onChangeFunction1),
            buildNotificationOption("Account Active", valNotify2, onChangeFunction2),
            buildNotificationOption("Opporunity", valNotify3, onChangeFunction3),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60),
              child: createButton(
                labelButton: "Sign out",
                buttonColor: green,
                func: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: greyone,)
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: green,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  Padding buildAccountOption(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: greyone,)),
          Icon(Icons.arrow_forward_ios, color: greyone, size: 17,),
        ],
      ),
    );
  }

  _lable(String s) => ListTile(
    title:
    headerText(text: s, fontWeight: FontWeight.w400, fontSize: 18),
    trailing: Icon(Icons.chevron_right_outlined, color: gris),
  );
}
