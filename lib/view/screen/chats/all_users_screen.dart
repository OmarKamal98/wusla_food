import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/screen/chats/chat_messages_screen.dart';

class AllUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<AuthProvider>(builder: (context, provider, x) {
      return Container(
        child: provider.users == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: provider.users?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      RouterClass.routerClass.pushWidget(AllChatMessagesScreen(
                        otherUser: provider.users![index],
                      ));
                    },
                    leading: CircleAvatar(
                      radius: 80.r,
                    ),
                    title: Text(provider.users![index].name!),
                    subtitle: Text(provider.users![index].email!),
                  );
                }),
      );
    });
  }
}
