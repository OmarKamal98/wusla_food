import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/modle/chefmodel.dart';
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
          style: TextStyle(fontSize: 24.sp, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
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
                ChefWidget(
                  chefMod: dataChef[0],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[1],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(
                  chefMod: dataChef[2],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[3],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(
                  chefMod: dataChef[4],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[5],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(
                  chefMod: dataChef[6],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[7],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(
                  chefMod: dataChef[8],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[4],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChefWidget(
                  chefMod: dataChef[0],
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChefWidget(
                  chefMod: dataChef[2],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
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
