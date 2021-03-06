import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/data/firebase/firestore_helper.dart';
import 'package:wusla_food/modle/chat.dart';
import 'package:wusla_food/modle/message.dart';
import 'package:wusla_food/modle/userfirebase.dart';

class AllChatMessagesScreen extends StatelessWidget {
  Chat? chat;
  UserApp? otherUser;
  AllChatMessagesScreen({this.chat, this.otherUser});
  TextEditingController textEditingController = TextEditingController();
  String setChatId() {
    String chatId;
    String? myId = FirebaseAuth.instance.currentUser?.uid;
    int myIdHash = myId.hashCode;
    int otherUserHash = otherUser!.id.hashCode;

    if (myIdHash > otherUserHash) {
      chatId = myId.toString() + '_' + (otherUser!.id.toString());
    } else {
      chatId = (otherUser!.id.toString()) + '_' + myId.toString();
    }
    return chatId;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, x) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF22A45D),
          title: Text(
              otherUser == null ? chat!.membersNames![1] : otherUser!.name),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                    child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirestoreHelper.firestoreHelper
                      .getChatMessages(chat?.chatId ?? setChatId()),
                  builder: (context, dataSnapShot) {
                    List<QueryDocumentSnapshot<Map<String, dynamic>>>
                        snapshots = dataSnapShot.data?.docs ?? [];
                    return Container(
                      child: ListView.builder(
                          itemCount: snapshots.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 2),
                              child: Row(
                                mainAxisAlignment: snapshots[index]
                                            ['senderId'] ==
                                        provider.loggedUser!.id
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      ChatBubble(
                                        backGroundColor: snapshots[index]
                                                    ['senderId'] ==
                                                provider.loggedUser!.id
                                            ? Colors.green[300]
                                            : Colors.green[900],
                                        clipper: ChatBubbleClipper5(
                                            type: snapshots[index]
                                                        ['senderId'] ==
                                                    provider.loggedUser!.id
                                                ? BubbleType.sendBubble
                                                : BubbleType.receiverBubble),
                                        child: Text(
                                          snapshots[index]['content'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    );
                  },
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          controller: textEditingController,
                          decoration: InputDecoration(
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Message...',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        String? chatId;
                        if (otherUser != null) {
                          chatId = setChatId();
                        } else {
                          chatId = chat?.chatId;
                        }
                        Message message = Message(
                            content: textEditingController.text,
                            senderId: provider.loggedUser!.id,
                            chatId: chatId);
                        provider.sendMessage(message, otherUser);
                        textEditingController.clear();
                      },
                      child: Container(
                          height: 50,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF22A45D),
                              borderRadius: BorderRadius.circular(40)),
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
