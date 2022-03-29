import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';

import '../../../controller/provider/app_provider.dart';
import '../../component/filter_cell_widget.dart';

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
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            size: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF22A45D),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'filter'.tr(),
          style: TextStyle(fontSize: 24.sp, color: Colors.black),
        ),
      ),
      body: Consumer<AppProvider>(
        builder: (context, provider, x) {
          return ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                child: SizedBox(
                    height: 40.h,
                    child: Text(
                      'department'.tr(),
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )),
              ),
              Row(
                children: [
                  FilterCellWidget(
                    filterText: 'الكل ',
                    color: Colors.white,
                  ),
                  FilterCellWidget(filterText: 'مشاوي ', color: Colors.white),
                  FilterCellWidget(filterText: 'شوربات ', color: Colors.white),
                ],
              ),
              Row(
                children: [
                  FilterCellWidget(filterText: 'برجر ', color: Colors.white),
                  FilterCellWidget(
                      filterText: 'السلطات  ', color: Colors.white),
                  FilterCellWidget(filterText: 'بيتزا ', color: Colors.white),
                ],
              ),
              Row(
                children: [
                  FilterCellWidget(filterText: 'تايلندي ', color: Colors.white),
                  FilterCellWidget(filterText: 'فطور ', color: Colors.white),
                  FilterCellWidget(filterText: 'عشاء ', color: Colors.white),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                child: SizedBox(
                    height: 40.h,
                    child: Text(
                      'location'.tr(),
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )),
              ),
              Row(
                children: [
                  FilterCellWidget(filterText: 'الكل ', color: Colors.white),
                  FilterCellWidget(filterText: 'النصر ', color: Colors.white),
                  FilterCellWidget(
                      filterText: 'تل الهوى  ', color: Colors.white),
                ],
              ),
              Row(
                children: [
                  FilterCellWidget(filterText: 'الرمال ', color: Colors.white),
                  FilterCellWidget(filterText: 'الوسطى  ', color: Colors.white),
                  FilterCellWidget(
                      filterText: 'الجامعات ', color: Colors.white),
                ],
              ),
              Row(
                children: [
                  FilterCellWidget(filterText: 'الكرامة ', color: Colors.white),
                  FilterCellWidget(
                      filterText: 'المخابرات ', color: Colors.white),
                  FilterCellWidget(
                      filterText: 'الشجاعية ', color: Colors.white),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
                child: SizedBox(
                    height: 40.h,
                    child: Text(
                      'price'.tr(),
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )),
              ),
              SliderTheme(
                data: const SliderThemeData(
                    activeTickMarkColor: Colors.transparent,
                    inactiveTickMarkColor: Colors.transparent,
                    activeTrackColor: Color(0xFF22A45D),
                    thumbColor: Color(0xFF22A45D),
                    inactiveTrackColor: Color(0xffF1F1F1)),
                child: RangeSlider(
                    divisions: 20,
                    /*activeColor:const Color(0xFF22A45D) ,
                    inactiveColor: const Color(0xffF1F1F1),*/
                    max: 200,
                    min: 0,
                    labels: RangeLabels(
                      provider.priceValues.start.round().toString(),
                      provider.priceValues.end.round().toString(),
                    ),
                    values: provider.priceValues,
                    onChanged: (values) {
                      provider.priceRangeValueFun(values);
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      '0 ',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'coin'.tr(),
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      '200 ',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'coin'.tr(),
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
                child: SizedBox(
                    height: 40.h,
                    child: Text(
                      'distance'.tr(),
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )),
              ),
              SliderTheme(
                data: const SliderThemeData(
                    activeTickMarkColor: Colors.transparent,
                    inactiveTickMarkColor: Colors.transparent,
                    activeTrackColor: Color(0xFF22A45D),
                    thumbColor: Color(0xFF22A45D),
                    inactiveTrackColor: Color(0xffF1F1F1)),
                child: Slider(
                  divisions: 20,
                  max: 2000,
                  min: 0,
                  label: provider.distanceValues.round().toString(),
                  value: provider.distanceValues,
                  onChanged: (value) {
                    provider.distanceRangeValueFun(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      '0 ',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'meter'.tr(),
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      '2000 ',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'meter'.tr(),
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          RouterClass.routerClass
                              .pushWidgetReplacement(NavigationMain());
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          height: 52.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                              child: Text(
                            'cancel'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.sp,
                                color: Colors.black.withOpacity(0.54)),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          RouterClass.routerClass
                              .pushWidgetReplacement(NavigationMain());
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('تم تفعيل الفلترة'),
                            backgroundColor: Color(0xFF22A45D),
                          ));
                        },
                        child: Container(
                          height: 52.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFF22A45D),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                              child: Text(
                            'apply'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.sp,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
