
import 'package:flutter/material.dart';
import 'package:wusla_food/view/screen/navigate_screen/filter_screen.dart';
import 'package:wusla_food/view/screen/navigate_screen/home_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/on_boarding.dart';

class RouterClass {
  RouterClass._();
  static RouterClass routerClass = RouterClass._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  pushByName(String screenName) {
    navKey.currentState?.pushNamed(screenName);
  }

  pushWidget(Widget widget) {
    // BuildContext context= navKey.currentState.context;
    navKey.currentState?.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  pushWidgetReplacement(Widget widget) {
    // BuildContext context = navKey.currentState.context;
    navKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  popFunction() {
    navKey.currentState?.pop();
  }

  Map<String, Widget Function(BuildContext)> map = {
    'screen0': (context) =>  OnBoarding(),
    'screen1': (context) => const HomeScreen(),
    'screen2': (context) => const FilterScreen(),
  };
}
