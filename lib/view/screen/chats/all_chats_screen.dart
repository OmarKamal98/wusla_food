import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';

import 'chat_messages_screen.dart';

class AllChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, x) {
      return Container(
        child: provider.allMyChats == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : provider.allMyChats!.length == 0
                ? Center(
                    child: Text('No Chats Found'),
                  )
                : ListView.builder(
                    itemCount: provider.allMyChats!.length - 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          RouterClass.routerClass.pushWidget(
                            AllChatMessagesScreen(
                                chat: provider.allMyChats![index]),
                          );
                        },
                        leading: CircleAvatar(
                          radius: 30,
                        ),
                        title: Text(provider.allMyChats![index].membersNames!
                            .where((element) =>
                                element != provider.loggedUser!.name)
                            .first),
                        subtitle: Text(provider.users![index].email!),
                      );
                    }),
      );
    });
  }
}
