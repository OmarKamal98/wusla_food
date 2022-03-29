import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      required this.hieg,
      required this.widt,
      required this.label,
      required this.onTap,
      required this.color,
      required this.textcolor
      })
      : super(key: key);

  final String label;
  final Color color;
  final Color textcolor;
  final Function() onTap;
  double widt;
  double hieg;

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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: widt,
        height: hieg,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: Text(
          label,
          style: TextStyle(color: textcolor, fontSize: 28.sp),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
