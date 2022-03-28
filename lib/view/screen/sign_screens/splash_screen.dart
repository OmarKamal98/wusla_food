import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future.delayed(const Duration(seconds: 0)).then((v) async {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        RouterClass.routerClass.pushWidget(LoginScreen());
      } else {
        await Provider.of<AuthProvider>(context, listen: false)
            .getUserFromFirebase();

        RouterClass.routerClass.pushWidget(NavigationMain());
      }
    });
    return Scaffold(
      body: Center(
        child: Text(
          'Wlcome',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
