import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(375, 812),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 300.h,
            decoration: BoxDecoration(
                /* image:  DecorationImage(
                  image: NetworkImage(),
                ),*/
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.sp,
                  color: Colors.black,
                ),
              ),
              actions: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.sp,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 200.h,
                  ),
                  SizedBox(
                    height: 470.h,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                              height: 40.h,
                              child: Row(
                                children: [
                                  Text(
                                    'مسخن فلسطيني',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '30 شيكل',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                              height: 40.h,
                              child: Text(
                                'دجاج مشوي, بصل, شراك, مكسرات, زيت زيتون, سماق',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.54)),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                              height: 40.h,
                              child: Text(
                                'الشيف: نائل النجار',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.54)),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                            height: 40.h,
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/truck.svg'),
                                SizedBox(width: 10.w),
                                Text(
                                  'مجانا ',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 50.w),
                                SvgPicture.asset('assets/icons/clock.svg'),
                                SizedBox(width: 10.w),
                                Text(
                                  '30 دقيقة',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 50.w),
                                SizedBox(
                                  width: 60.w,
                                  child: Row(children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xFFFFC529),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                            height: 40.h,
                            child: Row(
                              children: [
                                SizedBox(width: 20.w),
                                Column(
                                  children: [
                                    Text(
                                      '5.6',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'سعرات حرارية',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  color: Colors.black,
                                  height: 40.h,
                                  width: 2.w,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      '2.5',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'كربوهيدرات',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  color: Colors.black,
                                  height: 40.h,
                                  width: 2.w,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      '3.4',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'بروتينات',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  color: Colors.black,
                                  height: 40.h,
                                  width: 2.w,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      '1.8',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'سكريات',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  color: Colors.black,
                                  height: 40.h,
                                  width: 2.w,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Text(
                                      '2.1',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'دهون',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 5.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          height: 210.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF3FBF7),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'الحجم',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 30.sp,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    fillColor:MaterialStateProperty.all(const Color(0xFF22A45D)) ,
                                      //const Color(0xFF22A45D)
                                      value: true, onChanged: (onChanged) {}),
                                  Text(
                                    'شخص واحد',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '30 شيكل',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                             Row(
                                children: [
                                  Checkbox(
                                      fillColor:MaterialStateProperty.all(const Color(0xFF22A45D)) ,
                                      //const Color(0xFF22A45D)
                                      value: false, onChanged: (onChanged) {}),
                                  Text(
                                    'شخصين',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '40 شيكل',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                               Row(
                                children: [
                                  Checkbox(
                                      fillColor:MaterialStateProperty.all(const Color(0xFF22A45D)) ,
                                      //const Color(0xFF22A45D)
                                      value: false, onChanged: (onChanged) {}),
                                  Text(
                                    'عدة اشخاص',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '50 شيكل',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
