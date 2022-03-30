import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(color: const Color(0xFFECF3EF), height: 80.h),
          Container(
            color: const Color(0xFFECF3EF),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Column(
                  children: [
                    Text(
                      'عمر ابو مغيصيب',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'omar@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 22.sp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              'الملف الشخصي',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 22.sp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              'طلباتي',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 22.sp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              'المفضلة',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(

            title: Text(
              'الاعدادت',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(

            title: Text(
              'معلومات عنا',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(

            title: Text(
              'الاتصال بالدعم',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 30.h),
          ListTile(

            title: Text(
              'تسجيل الخروج',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,color: const Color(0xFFF82814)),
            ),
          ),
        ],
      ),
    );
  }
}
