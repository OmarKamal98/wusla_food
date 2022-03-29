import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PrepareOrderScreen extends StatelessWidget {
  const PrepareOrderScreen({Key? key}) : super(key: key);

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
        leading: GestureDetector(
        child: Icon(
          Icons.arrow_back_ios,
          size: 20.sp,
          color: Colors.black,
        ),
      ),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Center(child: SvgPicture.asset('assets/icons/progress.svg')),
          SizedBox(height: 40.h),
          Image.asset('assets/images/bro.png'),
          SizedBox(height: 50.h),
          Text("تهانينا!",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w600),),
          SizedBox(height: 30.h),
          Text("جاري تحضير الطلب...",style: TextStyle(fontSize: 20.sp),),
          SizedBox(height: 50.h),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 10.w, vertical: 10.h),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.w, vertical: 10.h),
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                        child: Text(
                          "الرئيسية",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: Colors.black.withOpacity(0.54)),
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF22A45D),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                        child: Text(
                          'تتبع الطلب',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
