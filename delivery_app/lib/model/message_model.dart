import './user_model.dart';

class Message {
  final User sender;
  final String avatar;
  final String time;
  final int unreadCount;
  final bool isRead;
  final String text;

  Message({
    required this.sender,
    required this.avatar,
    required this.time,
    required this.unreadCount,
    required this.text,
    required this.isRead,
  });
}

final List<Message> recentChats = [
  Message(
    sender: addison,
    avatar: 'assets/images/Addison.jpg',
    time: '01:25',
    text: "84(51)122-03-22",
    unreadCount: 1,
    isRead: true,
  ),
  Message(
    sender: jason,
    avatar: 'assets/images/Jason.jpg',
    time: '12:46',
    text: "84(20)069-03-10",
    unreadCount: 1,
    isRead: true,
  ),
  Message(
    sender: deanna,
    avatar: 'assets/images/Deanna.jpg',
    time: '05:26',
    text: "84(44)970-71-22",
    unreadCount: 3,
    isRead: true,
  ),
  Message(
    sender: nathan,
    avatar: 'assets/images/Nathan.jpg',
    time: '12:45',
    text: "84(04)348-56-07",
    unreadCount: 2,
    isRead: true,
  ),
];
