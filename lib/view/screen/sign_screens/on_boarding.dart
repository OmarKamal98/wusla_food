import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/view/component/button.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/register_screen.dart';
import '../../component/on_boarding_wedgit.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({
    Key? key,
  }) : super(key: key);
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
      body: Padding(
        padding: EdgeInsets.only(top: 112.h, left: 36.w, right: 36.w),
        child: Column(
          children: [
            OnBoardingWidget(
              imageUrl: 'assets/image/onbord1.png',
              titile: 'Welcome ',
              describtion:
                  'describtionuh ijeiojf jhiuerh oiuheiuorh uehru huoiehru hIUERH UKHERNUEIHFUEHF screeemn 1',
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: PrimaryButton(
                hieg: 50.h,
                widt: 343.w,
                color: Colors.green,
                label: 'Next',
                onTap: () {
                  RouterClass.routerClass.pushWidgetReplacement(SignUp());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
