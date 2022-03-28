
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wusla_food/view/component/chafe_widget.dart';
import 'package:wusla_food/view/component/department_widget.dart';
import 'package:wusla_food/view/component/meal_perview_widget.dart';
import 'package:wusla_food/view/component/search_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'title'.tr(),
          style: TextStyle(color: Colors.black, fontSize: 24.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/chat.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children:  [
              SizedBox(width: 25.w,),
              SizedBox(
                height: 40.h,
                width: 279.w,
                child: const SearchFieldWidget(),
              ),
              SizedBox(width: 15.w,),
               SizedBox(
                child: SvgPicture.asset('assets/icons/filter2.svg'),
               // child: Icon(Icons.list),
              ),

            ],
          ),
          Container(
            decoration:  const BoxDecoration(
              //borderRadius: BorderRadius.circular(20.r)
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 8.h),
            height: 140.h,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              reverse: true,
              itemBuilder: (_, index) {
                return Container(

                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('$index'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Text('department'.tr(),style: TextStyle(fontSize: 18.sp),)),
          ),
          Container(
            height: 107.h,
            width: 375.w,
            margin:  EdgeInsets.only(top: 10.h,bottom: 10.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:(context,index){
                  return  DepartmentWidget( index: index,);
                }),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text('mostPopular'.tr(),style: TextStyle(fontSize: 18.sp),),
                  const Spacer(),
                    TextButton(onPressed: (){}, child: Text('all'.tr(),style: TextStyle(fontSize: 18.sp,color: Colors.black),))
                  ],
                )),
          ),
          Container(
            height: 170.h,
            width: 375.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:(context,index){
                  return  MealPreviewWidget( index: index,);
                }),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text('mostPopularChafe'.tr(),style: TextStyle(fontSize: 18.sp),),
                    const Spacer(),
                    TextButton(onPressed: (){}, child: Text('all'.tr(),style: TextStyle(fontSize: 18.sp,color: Colors.black),))
                  ],
                )),
          ),
          Container(
            height: 107.h,
            width: 375.w,
            margin:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:(context,index){
                  return  ChafeWidget( index: index,);
                }),
          ),
        ],
      ),
    );
  }
}
