import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/app_provider.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/screen/chats/main_page.dart';
import 'package:wusla_food/view/screen/check_out.dart';
import 'package:wusla_food/view/screen/navigate_screen/department_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/map.dart';
import 'package:wusla_food/view/screen/sign_screens/on_boarding.dart';
import 'package:wusla_food/view/screen/sign_screens/register_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
        ChangeNotifierProvider<AppProvider>(create: (_) => AppProvider()),
      ],
      child: EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          // <-- change the path of the translation files
          fallbackLocale: const Locale('en'),
          child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: RouterClass.routerClass.navKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}
