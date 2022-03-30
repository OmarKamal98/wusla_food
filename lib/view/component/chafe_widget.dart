import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/modle/chefmodel.dart';

class ChafeWidget extends StatelessWidget {
  ChafeWidget({required this.chefMod, Key? key}) : super(key: key);
  ChefMod? chefMod;
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
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.network(
                  chefMod!.imageUrl!,
                  fit: BoxFit.cover,
                  width: 120.0,
                  height: 120.0,
                  // child: Image.network(
                  //
                  //   fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 5.h,
          ),
          Text(
            chefMod!.name!,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
