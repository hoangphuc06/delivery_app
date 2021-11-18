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
    text: "typing...",
    unreadCount: 1,
    isRead: true,
  ),
  Message(
    sender: jason,
    avatar: 'assets/images/Jason.jpg',
    time: '12:46',
    text: "Will I be in it?",
    unreadCount: 1,
    isRead: true,
  ),
  Message(
    sender: deanna,
    avatar: 'assets/images/Deanna.jpg',
    time: '05:26',
    text: "That's so cute.",
    unreadCount: 3,
    isRead: true,
  ),
  Message(
    sender: nathan,
    avatar: 'assets/images/Nathan.jpg',
    time: '12:45',
    text: "Let me see what I can do.",
    unreadCount: 2,
    isRead: true,
  ),
];
