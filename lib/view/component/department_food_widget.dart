import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/modle/model_detail_shar.dart';

class SubDepartmentWidget extends StatelessWidget {
  SubDepartmentWidget({Key? key, required this.detailSharq}) : super(key: key);
  DetailSharq? detailSharq;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.w),
      height: 120.h,
      width: 339.w,
      decoration: BoxDecoration(
          color: const Color(0xFFEAFFF3),
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage(detailSharq!.imageUrl!), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 120.h,
            width: 232.w,
            margin: EdgeInsets.only(right: 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 160.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      child: Text(
                        detailSharq!.name!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 30.sp,
                    ),
                    SizedBox(
                      width: 3.w,
                    )
                  ],
                ),
                Text(
                  'الشيف :' + detailSharq!.chefName!,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Row(children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFC529),
                      ),
                      Text(
                        detailSharq!.rate!,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
                      ),
                    ]),
                    const Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                      height: 30.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF22A45D),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                        child: Text(
                          'عروض',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
