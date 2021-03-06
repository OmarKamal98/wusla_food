import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/modle/chefmodel.dart';
import 'package:wusla_food/modle/homeeee.dart';
import 'package:wusla_food/modle/model_detail_shar.dart';
import 'package:wusla_food/view/component/chafe_widget.dart';
import 'package:wusla_food/view/component/department_widget.dart';
import 'package:wusla_food/view/component/meal_perview_widget.dart';
import 'package:wusla_food/view/component/search_field_widget.dart';
import 'package:wusla_food/view/screen/chats/main_page.dart';
import 'package:wusla_food/view/screen/navigate_screen/favorite_screen.dart';
import 'package:wusla_food/view/screen/navigate_screen/filter_screen.dart';

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
        leading: InkWell(
            onTap: () {
              RouterClass.routerClass.pushWidget(FavoriteScreen());
            },
            child: Image.asset('assets/image/favhome.png')),
        elevation: 0,
        title: Text(
          'سفرتنا',
          style: TextStyle(color: Color(0xFF22A45D), fontSize: 24.sp),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              RouterClass.routerClass.pushWidget(MainPageChat());
            },
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
            children: [
              SizedBox(
                width: 25.w,
              ),
              SizedBox(
                height: 40.h,
                width: 279.w,
                child: const SearchFieldWidget(),
              ),
              SizedBox(
                width: 15.w,
              ),
              InkWell(
                onTap: () {
                  RouterClass.routerClass.pushWidget(FilterScreen());
                },
                child: SizedBox(
                  child: SvgPicture.asset('assets/icons/filter2.svg'),
                  // child: Icon(Icons.list),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.r)
                ),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
            height: 140.h,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              reverse: true,
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: AssetImage('assets/image/mainhomeoh.png'),
                        fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Text(
                  'department'.tr(),
                  style: TextStyle(fontSize: 18.sp),
                )),
          ),
          Container(
            height: 107.h,
            width: 375.w,
            margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: detailsplite.length,
                itemBuilder: (context, index) {
                  return DepartmentWidget(
                    detailsplites: detailsplite[index],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text(
                      'mostPopular'.tr(),
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'all'.tr(),
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.black),
                        ))
                  ],
                )),
          ),
          Container(
            height: 170.h,
            width: 375.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataShar.length,
                itemBuilder: (context, index) {
                  return MealPreviewWidget(
                    detailSharqa: dataShar[index],
                  );
                }),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text(
                      'mostPopularChafe'.tr(),
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'all'.tr(),
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.black),
                        ))
                  ],
                )),
          ),
          Container(
            height: 107.h,
            width: 375.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataChef.length,
                itemBuilder: (context, index) {
                  return ChafeWidget(
                    chefMod: dataChef[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
