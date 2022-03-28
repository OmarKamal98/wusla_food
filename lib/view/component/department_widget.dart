import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepartmentWidget extends StatelessWidget {
  final int index;
  const DepartmentWidget({required this.index,Key? key}) : super(key: key);

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
            height: 80.h,
            width: 90.w,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.grey
            ),
            child: Center(child: Text('$index')),
          ),
          SizedBox(height: 5.h,),
          Text('department name',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
