import 'package:delivery_app/src/colors/colors.dart';
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
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            Row(children: const [
              Icon(Icons.person, color: Colors.blue),
              SizedBox(width: 10),
              Text("Account",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ]),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountOption(context, "Change Password"),
            buildAccountOption(context, "Content Settings"),
            buildAccountOption(context, "Social"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Privacy and Security"),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(Icons.volume_up_outlined, color: Colors.blue),
                SizedBox(
                  width: 10,
                ),
                Text("Notifications",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
            const Divider(height: 20, thickness: 1),
            const SizedBox(
              height: 10,
            ),
            buildNotificationOption(
                "Nofication", valNotify1, onChangeFunction1),
            buildNotificationOption(
                "Account Active", valNotify2, onChangeFunction2),
            buildNotificationOption(
                "Opporunity", valNotify3, onChangeFunction3),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: const Text(
                  "SIGN OUT",
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 2.2, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
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

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // showDialog(dynamic context = context, builder: builder) {
        //   return AlertDialog(
        //     title: Text(title),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: const [
        //         Text("Option 1"),
        //         Text("Option 2"),
        //       ],
        //     ),
        //     actions: [
        //       TextButton(
        //           onPressed: () {
        //             Navigator.of(context).pop();
        //           },
        //           child: const Text("Close"))
        //     ],
        //   );
        // }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600])),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
