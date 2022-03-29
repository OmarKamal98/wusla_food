import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepartmentscreenWidget extends StatelessWidget {
  DepartmentscreenWidget({
    Key? key,
    required this.rate,
    required this.imageUrl,
    required this.title,
    required this.noS,
    required this.review,
  }) : super(key: key);
  String? imageUrl;
  String? title;
  String? rate;
  String? noS;
  String? review;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 120.h,
      width: 339.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 4.0,
            ),
          ],
          color: const Color(0xFFF3FBF7),
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        children: [
          Container(
            height: 120.h,
            width: 130.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                  image: AssetImage(imageUrl!), fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                child: Text(
                  title!,
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w, top: 3.h),
                child: Text(
                  noS!,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 150.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: SizedBox(
                      width: 50.w,
                      child: Row(children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFC529),
                        ),
                        Text(
                          rate!,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                        ),
                      ]),
                    ),
                  ),
                  Text(
                    review!,
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
