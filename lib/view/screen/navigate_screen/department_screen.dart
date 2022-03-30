import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/modle/model_detail_shar.dart';
import 'package:wusla_food/view/screen/navigate_screen/filter_screen.dart';

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
                image: AssetImage('assets/image/detailpart.png'),
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
                  SizedBox(
                    height: 200.h,
                  ),
                  SizedBox(
                    height: 470.h,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          child: SizedBox(
                              height: 40.h,
                              child: Text(
                                'اكلات شرقية',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 8.h),
                              child: SizedBox(
                                  height: 40.h,
                                  child: Text(
                                    '90 شيف',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  )),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                RouterClass.routerClass
                                    .pushWidget(FilterScreen());
                              },
                              child: Icon(
                                Icons.filter_list_outlined,
                                color: Color(0xFF22A45D),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            )
                          ],
                        ),
                        SubDepartmentWidget(
                          detailSharq: dataShar[0],
                        ),
                        SubDepartmentWidget(detailSharq: dataShar[1]),
                        SubDepartmentWidget(detailSharq: dataShar[2]),
                        SubDepartmentWidget(detailSharq: dataShar[3]),
                        SubDepartmentWidget(detailSharq: dataShar[4]),
                        SubDepartmentWidget(detailSharq: dataShar[5]),
                        SubDepartmentWidget(detailSharq: dataShar[6]),
                        SubDepartmentWidget(detailSharq: dataShar[7]),
                        SubDepartmentWidget(detailSharq: dataShar[8]),
                        SubDepartmentWidget(detailSharq: dataShar[9]),
                        SubDepartmentWidget(detailSharq: dataShar[10]),
                        SubDepartmentWidget(detailSharq: dataShar[11]),
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
