import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/controller/provider/auth_provider.dart';
import 'package:wusla_food/view/component/button.dart';
import 'package:wusla_food/view/component/social_button_circle.dart';
import 'package:wusla_food/view/component/text_input_fel.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> regFormkey = GlobalKey<FormState>();
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
        key: regFormkey,
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
                    'Create Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    hintText: 'User Name',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: provider.userNameController,
                    onChanged: (val) {},
                    validator: (value) {
                      if (value == null || value.length == 0) {
                        return 'هذا الحقل مطلوب ';
                      } else if (value.isEmpty == true) {
                        return 'البريد الألكتروني غير صالح';
                      }
                      return null;
                    },
                    preffixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: provider.emailController,
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
                  height: 27.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    hintText: 'Phone Number',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: provider.phoneController,
                    onChanged: (val) {},
                    validator: (value) {
                      if (value == null || value.length == 0) {
                        return 'هذا الحقل مطلوب ';
                      } else if (value.isEmpty == true) {
                        return 'البريد الألكتروني غير صالح';
                      }
                      return null;
                    },
                    preffixIcon: const Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: JDInputText(
                    controller: provider.passwordController,
                    obscureText: provider.visiblePass,
                    hintText: 'Password',
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
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: CheckboxListTile(
                    title: const Text(
                        'I agree to the application terms and policies'),
                    value: provider.checkRegister,
                    onChanged: (newValue) {
                      provider.changeVisibilityCheckBox();
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: PrimaryButton(
                    widt: 343.w,
                    hieg: 50.h,
                    textcolor: Colors.white,
                    onTap: () {
                      if (regFormkey.currentState!.validate() &&
                          provider.checkRegister) {
                        provider.register(context);

                        provider.clear();
                      } else if (regFormkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'You must agree to the terms and policies'),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Error Input'),
                            backgroundColor: Colors.red,
                            padding: EdgeInsets.only(right: 200.w),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    },
                    color: const Color(0xFF22A45D),
                    label: 'Sign Up',
                  ),
                ),
                SizedBox(
                  height: 30.h,
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
                      "Sign Up With",
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
                  padding: EdgeInsets.only(top: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'have an account ?',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      TextButton(
                          onPressed: () {
                            RouterClass.routerClass.pushWidget(LoginScreen());
                          },
                          child: Text(
                            'Sign In',
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
