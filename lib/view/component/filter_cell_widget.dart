import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCellWidget extends StatelessWidget {
  final String filterText;

  const FilterCellWidget({Key? key, required this.filterText})
      : super(key: key);

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
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      height: 40.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(
          child: Text(
            filterText,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp,color: Colors.black.withOpacity(0.54)),
          )),
    );
  }
}
