import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingWidget extends StatelessWidget {
  String? titile;
  String? describtion;
  String? imageUrl;

  OnBoardingWidget({Key? key, this.imageUrl, this.titile, this.describtion})
      : super(key: key);
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
    return SizedBox(
      width: 304.w,
      height: 521.h,
      child: Stack(
        children: [
          Positioned(
              top: 55.h,
              right: 26.w,
              left: 26.w,
              child: Container(
                width: 294.w,
                height: 457.h,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 8,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              )),
          Positioned(
              top: 35.h,
              right: 12.w,
              left: 12.w,
              child: Container(
                  width: 280.w,
                  height: 457.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 8,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)))),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                width: 304.w,
                height: 471.h,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 8,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 258.w,
                        height: 191.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(imageUrl!),
                          fit: BoxFit.contain,
                        ))),
                    Padding(
                      padding: EdgeInsets.only(top: 60.h),
                      child: Text(
                        titile!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.h, left: 27.w, right: 27.w),
                      child: Text(
                        describtion!,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
