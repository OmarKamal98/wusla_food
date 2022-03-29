import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/on_boarding.dart';
import 'package:wusla_food/view/screen/sign_screens/on_boarding1.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build4
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(375, 812),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    Future.delayed(const Duration(seconds: 3)).then((v) async {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        RouterClass.routerClass.pushWidgetReplacement(OnBoarding());
      } else {
        await Provider.of<AuthProvider>(context, listen: false)
            .getUserFromFirebase();

        RouterClass.routerClass.pushWidget(NavigationMain());
      }
    });
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color(0xFF22A45D)),
        child: Center(
          child: Image.asset(
            'assets/image/splash.png',
            height: 180.h,
            width: 250.w,
          ),
        ),
      ),
    );
  }
}
