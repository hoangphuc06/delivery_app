import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: white,
        title: headerText(
            text: 'Notification',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
            _listNotification(),
          ],
        ),
      ),
    );
  }

  _listNotification() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
        color: Colors.white
      ),
      child: ListTile(
        leading: Image(
          image: AssetImage('assets/sale50.png'),
          width: 50,
          height: 50,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            headerText(
                text: '[HCMC, HN, DN] VOUCHER 70K 😍',
                fontWeight: FontWeight.w500,
                fontSize: 17),
            SizedBox(
              height: 8,
            ),
            headerText(
                text: '👉 When applying code SIEUTIEC70 from 200K',
                fontWeight: FontWeight.w400,
                color: greyone,
                fontSize: 17),
            SizedBox(
              height: 8,
            ),
            headerText(
                text: "👉 Don't wait, apply now",
                fontWeight: FontWeight.w400,
                color: greyone,
                fontSize: 17),
            SizedBox(
              height: 8,
            ),
            headerText(
                text: '15/11/2021 17:00',
                fontWeight: FontWeight.w400,
                color: greyone,
                fontSize: 14),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
