import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/view/component/button.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';
import 'package:wusla_food/view/screen/sign_screens/register_screen.dart';
import '../../component/on_boarding_wedgit.dart';

class OnBoarding2 extends StatelessWidget {
  OnBoarding2({
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
              imageUrl: 'assets/image/onbord2.jfif',
              titile: 'خدمة توصيل سريعة لطلبات الطعام ',
              describtion:
                  'اطلب وجبتك من مكانك ومن شيفك المفضل، نوفر لك  \n         طلبيتك بأسرع وقت ممكن وبأسعار مناسبة',
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: PrimaryButton(
                hieg: 50.h,
                widt: 343.w,
                color: Colors.green,
                textcolor: Colors.white,
                label: 'Skip',
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
