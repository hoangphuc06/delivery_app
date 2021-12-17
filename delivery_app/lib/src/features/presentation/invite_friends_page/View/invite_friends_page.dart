import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/model/message_model.dart';

class InviteFriendsPage extends StatefulWidget {
  InviteFriendsPage({Key? key}) : super(key: key);

  @override
  _InviteFriendsPageState createState() => _InviteFriendsPageState();
}

class _InviteFriendsPageState extends State<InviteFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: headerText(
            text: 'Invite Friends',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From your phone book",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            ListView.builder(
                shrinkWrap: true,
                itemCount: recentChats.length,
                itemBuilder: (context, int index) {
                  final recentChat = recentChats[index];
                  return Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(recentChat.avatar),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                recentChat.sender.name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(recentChat.text,
                                  style: const TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: green
                            ),
                            child: Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              ),
                            ),
                          )
                        ],
                      ));
                })
          ],
        ),
      ),
    );
  }
}
