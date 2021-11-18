import 'package:delivery_app/src/colors/colors.dart';
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
        title: const Text("Invite Friends", style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.white))
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: const [
                Text(
                  "Recent Chats",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.search)
              ],
            ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                                child: Text(recentChat.unreadCount.toString(),
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(recentChat.time, style: TextStyle(color: gris))
                          ],
                        ),
                      ],
                    ));
              })
        ],
      ),
    );
  }
}
