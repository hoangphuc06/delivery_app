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
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
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
            SizedBox(
              height: 10,
            ),
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
      ),
      child: ListTile(
        leading: Image(
          image: AssetImage('assets/sale1.png'),
          width: 50,
          height: 50,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                text: '[HCMC, HN, DN] VOUCHER 70K khao bạn bữa tối😍',
                fontWeight: FontWeight.w400,
                fontSize: 17),
            SizedBox(
              height: 8,
            ),
            headerText(
                text: '👉Khi áp mã SIEUTIEC70 đơn từ 200K',
                fontWeight: FontWeight.w400,
                color: greytwo,
                fontSize: 17),
            headerText(
                text: '👉Chần chừ chi, lên đơn liền nào!',
                fontWeight: FontWeight.w400,
                color: greytwo,
                fontSize: 17),
            SizedBox(
              height: 8,
            ),
            headerText(
                text: '15/11/2021 17:00',
                fontWeight: FontWeight.w400,
                color: greytwo,
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
