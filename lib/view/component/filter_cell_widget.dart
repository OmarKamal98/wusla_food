import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wusla_food/controller/provider/app_provider.dart';

class FilterCellWidget extends StatefulWidget {
  final String filterText;
  late Color? color;

  FilterCellWidget({Key? key, required this.filterText, required this.color})
      : super(key: key);

  @override
  State<FilterCellWidget> createState() => _FilterCellWidgetState();
}

class _FilterCellWidgetState extends State<FilterCellWidget> {
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
    return InkWell(
      onTap: () {
        setState(() {
          widget.color =
              widget.color == Colors.white ? Color(0xFF22A45D) : Colors.white;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        height: 50.h,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
            child: Text(
          widget.filterText,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Colors.black.withOpacity(0.54)),
        )),
      ),
    );
  }
}
