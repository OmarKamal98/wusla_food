import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/department_food_widget.dart';


class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

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
            height: 250.h,
            decoration: BoxDecoration(
                color: const Color(0xFF22A45D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.r),
                  bottomRight: Radius.circular(100.r),
                )),
          ),
          Positioned(
            left: 37.5.w,
            top: 50.h,
            child: Container(
              height: 300.h,
              width: 300.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/west_food.png'),
              )),
            ),
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
              /* actions: [GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(
                    Icons.favorite,
                    size: 25.sp,
                    color: Colors.white,
                  ),
                ),
              ),],*/
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
              color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(height: 200.h,),
                SizedBox(
                  height: 470.h,
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                        child: SizedBox(
                            height: 40.h,
                            child: Text(
                              'اكلات شرقية',
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.w600,color: Colors.black),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                        child: SizedBox(
                            height: 40.h,
                            child: Text(
                              '90 شيف',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w600,color: Colors.black),
                            )),
                      ),
                      const SubDepartmentWidget(),
                      const SubDepartmentWidget(),
                      const SubDepartmentWidget(),
                      const SubDepartmentWidget(),
                      const SubDepartmentWidget(),
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
