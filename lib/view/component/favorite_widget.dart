import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

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
      margin: EdgeInsets.symmetric(horizontal: 40.w,vertical: 10.h),
      height: 111.h,
      width: 305.w,
      child: Card(
        child: Row(
          children: [
            SizedBox(width: 20.w),
            Expanded(
              child: Container(
                height: 67.h,
                width:100.w ,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.r)
                ),
                //child: Image.network(url),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('باربكيو الدجاج',style: TextStyle(fontSize: 18.sp),),
                  SizedBox(height: 15.h,),
                  Text('20 شيكل',style: TextStyle(fontSize: 18.sp),),

                ],
              ),
            ),
            const Expanded(
               child: CircleAvatar(
                backgroundColor:Color(0xFFF6F6F6),
                child: Center(child: Icon(Icons.favorite,color: Colors.red,)),
            ),
             ),
            
          ],
        ),
      ),
    );
  }
}
