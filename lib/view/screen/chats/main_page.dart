import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/screen/chats/all_users_screen.dart';

import 'all_chats_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Consumer<AuthProvider>(builder: (context, provider, x) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF22A45D),
            title: Text(
              'Whisper Chat',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    provider.logOut();
                  },
                  icon: Icon(Icons.logout))
            ],
            bottom: TabBar(
                onTap: (int) {
                  provider.getChats();
                },
                tabs: const [
                  Tab(
                    text: 'All Users',
                  ),
                  Tab(
                    text: 'All Chats',
                  ),
                ]),
          ),
          body: TabBarView(
            children: [AllUsersScreen(), AllChatsScreen()],
          ),
        );
      }),
    );
  }
}
