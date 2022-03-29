import 'package:wusla_food/modle/userfirebase.dart';

class Chat {
  String? chatId;
  List? membersIds;
  List? membersNames;
  List<UserApp>? userChat;
  Chat(
      {required this.chatId,
      required this.membersIds,
      required this.membersNames,
      required this.userChat});
  Chat.fromJson(Map<String, dynamic> map) {
    this.chatId = map['chatId'];
    this.membersIds = map['membersIds'];
    this.membersNames = map['membersNames'];
  }
  toMap() {
    return {
      'membersIds': membersIds,
      'membersNames': membersNames,
    };
  }
}
