import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/view/component/chef_screen_widget.dart';

class AllChefScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        title: Text(
          'الطباخين ',
          style: TextStyle(fontSize: 24.sp),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF22A45D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget()
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
