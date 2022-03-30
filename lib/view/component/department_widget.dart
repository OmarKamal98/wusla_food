import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/modle/homeeee.dart';

class DepartmentWidget extends StatelessWidget {
  DepartmentWidget({required this.detailsplites, Key? key}) : super(key: key);
  Detailsplite? detailsplites;
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
    return SizedBox(
      // height: 107,
      // width: 110,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 77.h,
            width: 90.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(detailsplites!.imageUrl!),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.grey),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            detailsplites!.name!,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
