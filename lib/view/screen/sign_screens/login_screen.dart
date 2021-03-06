import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';

import 'package:wusla_food/view/component/button.dart';
import 'package:wusla_food/view/component/social_button_circle.dart';
import 'package:wusla_food/view/component/text_input_fel.dart';
import 'package:wusla_food/view/screen/sign_screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> logFormkey = GlobalKey<FormState>();
  final Color facebookColor = const Color(0xff39579A);
  final Color twitterColor = const Color(0xff00ABEA);
  final Color googleColor = const Color(0xffDF4A32);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(375, 812),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
        body: Consumer<AuthProvider>(builder: (context, provider, x) {
      return Form(
        key: logFormkey,
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 100.w),
                  child: Text(
                    ' تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    hintText: 'البريد الإلكتروني',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: provider.loginEmailController,
                    onChanged: (val) {},
                    validator: (value) {
                      if (value == null || value.length == 0) {
                        return 'هذا الحقل مطلوب ';
                      } else if (value.isEmpty == true) {
                        return 'البريد الألكتروني غير صالح';
                      } else if (!isEmail(value)) {
                        return 'InCorrect Email syntax';
                      }
                      return null;
                    },
                    preffixIcon: const Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    controller: provider.loginPasswordController,
                    obscureText: provider.visiblePass,
                    hintText: 'كلمة المرور',
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (val) {},
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Empty password";
                      }
                      return null;
                    },
                    suffixIcon: InkWell(
                      onTap: () {
                        provider.changeVisibilityPassword();
                      },
                      child: Icon(
                        provider.visiblePass
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    preffixIcon: const Icon(
                      Icons.password,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 220.w),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('نسيت كلمة المرور ؟')),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: PrimaryButton(
                    widt: 343.w,
                    hieg: 50.h,
                    onTap: () {
                      if (logFormkey.currentState!.validate()) {
                        provider.login(context);
                      } else {
                        return ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('خطأ في البريد أو كلمة المرور'),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    color: const Color(0xFF22A45D),
                    textcolor: Colors.white,
                    label: 'تسجيل الدخول ',
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 30.0,
                        endIndent: 10.0,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "تسجيل الدخول بإستخدام",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 10.0,
                        endIndent: 30.0,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocilButton(
                      imageUrl: 'assets/image/googleicon.png',
                      ontap: () {},
                    ),
                    SocilButton(
                      imageUrl: 'assets/image/facebookicon.png',
                      ontap: () {},
                    ),
                    SocilButton(
                      imageUrl: 'assets/image/appleicon.png',
                      ontap: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 47.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'جديد في سفرتنا؟',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      TextButton(
                          onPressed: () {
                            RouterClass.routerClass.pushWidget(SignUp());
                          },
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w900),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }));
  }
}
