import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealPreviewWidget extends StatelessWidget {
  final int index;

  const MealPreviewWidget({Key? key, required this.index}) : super(key: key);

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
      height: 170.h,
      width: 160.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            child: Center(
              child: Text(
                '$index',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            width: 160.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Row(
              children: [
                Text(
                  'mealName',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'price',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Text(
            'Chafe: Ahmed yousef',
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: 160.w,
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: Row(
              children: [
                SizedBox(
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
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 13.r,
                    backgroundColor: const Color(0xFF22A45D),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13.r),
                      child: Icon(
                        Icons.add,
                        size: 22.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
