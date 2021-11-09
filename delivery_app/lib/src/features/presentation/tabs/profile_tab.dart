import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'profile-detail'),
            child: _header()),
        _firstBlock()
      ],
    ));
  }
}

Widget _header() {
  return Container(
    height: 250,
    color: bgGreyPage,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=389&q=80'),
            radius: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    headerText(
                        text: "Cameron Cook",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.chevron_right_outlined, color: gris))
                  ],
                )),
            Container(
              height: 25,
              margin: EdgeInsets.only(left: 20, top: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: rosa,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/crown.png"),
                        width: 16,
                        height: 16,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: headerText(
                            text: 'VIP Member',
                            color: Colors.white,
                            fontSize: 11),
                      )
                    ],
                  )),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _firstBlock() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('assets/noti.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Notification', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/payment.png'),
            width: 29,
            height: 29,
          ),
          title:
              headerText(text: 'Payment method', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/crown1.png'),
            width: 29,
            height: 29,
          ),
          title:
              headerText(text: 'Reward credits', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/promo.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Promo code', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Image(
            image: AssetImage('assets/setting.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Settings', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/friend.png'),
            width: 29,
            height: 29,
          ),
          title:
              headerText(text: 'Invite Friends', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/support.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Help Center', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/aboutus.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'About Us', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
      ],
    ),
  );
}
