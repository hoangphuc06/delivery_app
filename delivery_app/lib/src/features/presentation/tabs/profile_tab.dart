import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/location_page/view/location_page.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'profile-detail'),
              child: _header()),
          _firstBlock(context)
      ],
    ),
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

Widget _firstBlock(BuildContext context) {
  return SingleChildScrollView(
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, 'notification');
          },
          leading: Image(
            image: AssetImage('assets/noti.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Notification', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, 'payment-method');
          },
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
          onTap: () => Navigator.pushNamed(context, 'order-history'),
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
          onTap: () => Navigator.pushNamed(context, 'promo-code'),
          title: headerText(text: 'Promo code', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
        SizedBox(height: 20),
        GestureDetector(
          child: ListTile(
            leading: Image(
              image: AssetImage('assets/setting.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(text: 'Settings', fontWeight: FontWeight.w400),
            trailing: Icon(Icons.chevron_right_outlined, color: gris),
            onTap: () {
              Navigator.pushNamed(context, 'settings');
            },
          ),
        ),
        GestureDetector(
          child: ListTile(
            leading: Image(
              image: AssetImage('assets/friend.png'),
              width: 29,
              height: 29,
            ),
            title:
                headerText(text: 'Invite Friends', fontWeight: FontWeight.w400),
            trailing: Icon(Icons.chevron_right_outlined, color: gris),
            onTap: () {
              Navigator.pushNamed(context, 'invite-friends');
            },
          ),
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
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationPage()));
          },
          leading: Image(
            image: AssetImage('assets/location.jpg'),
            width: 29,
            height: 29,
          ),
          title: headerText(text: 'Location', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right_outlined, color: gris),
        ),
      ],
    ),
  );
}
