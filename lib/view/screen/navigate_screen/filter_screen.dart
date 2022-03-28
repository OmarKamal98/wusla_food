import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar:AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios,size: 20.sp,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('filter'.tr(),style: TextStyle(fontSize: 24.sp,color: Colors.black),),
      ),
      body: ListView(children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 8.h),
          child: SizedBox(
              height: 40.h,
              child: Text('department'.tr(),style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),)),
        ),
      ],),
    );
  }
}
