import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubDepartmentWidget extends StatelessWidget {
  const SubDepartmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.w) ,
      height: 120.h,
      width: 339.w,
      decoration: BoxDecoration(
          color: const Color(0xFFEAFFF3),
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        children: [

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.r),
              /*image: DecorationImage(
                image: AssetImage()
              ),*/
            ),
          ),
          Column(
            children: [
              Container(
                width: 150.w,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                child: Text(
                  'مقلوبة فلسطينية باللحمة',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'الشيف موسى محمد',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: 150.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: SizedBox(
                  width: 50.w,
                  child: Row(children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFC529),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.favorite_border_outlined,
                size: 30.sp,
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                height: 40.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF22A45D),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                    child: Text(
                      'عروض',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp,color: Colors.white),
                    ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
