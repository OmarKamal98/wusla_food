import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChafeWidget extends StatelessWidget {
  final int index;
  const ChafeWidget({required this.index,Key? key}) : super(key: key);

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
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      // height: 107,
      // width: 110,
      child: Column(
        children: [
          CircleAvatar(
           radius: 35.r,
            backgroundColor: Colors.grey,
            child: Center(child: Text('$index',style: const TextStyle(color: Colors.black),),),
          ),
          SizedBox(height: 5.h,),
          Text('Chafe name',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
