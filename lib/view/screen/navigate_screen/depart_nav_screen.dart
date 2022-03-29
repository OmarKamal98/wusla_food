import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/view/component/favorite_widget.dart';
import 'package:wusla_food/view/component/widget_depart_screen.dart';

class DepartNavScreen extends StatelessWidget {
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
          'الأقسام',
          style: TextStyle(fontSize: 20.sp, color: Color(0xFF22A45D)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          DepartmentscreenWidget(
            title: 'أكلات شرقية',
            rate: '4.8',
            noS: '34 صنف',
            review: '(231 مراجعة)',
            imageUrl: 'assets/image/d1.png',
          ),
          DepartmentscreenWidget(
            title: 'أكلات غربية',
            rate: '4.6',
            noS: '27 صنف',
            review: '(185 مراجعة)',
            imageUrl: 'assets/image/d2.png',
          ),
          DepartmentscreenWidget(
            title: 'مقبلات ',
            rate: '4.9',
            noS: '53 صنف',
            review: '(426 مراجعة)',
            imageUrl: 'assets/image/d3.png',
          ),
          DepartmentscreenWidget(
            title: 'أكلات بحرية',
            rate: '4.2',
            noS: '16 صنف',
            review: '(127 مراجعة)',
            imageUrl: 'assets/image/d4.png',
          ),
          DepartmentscreenWidget(
            title: 'حلويات',
            rate: '4.5',
            noS: '62 صنف',
            review: '(625 مراجعة)',
            imageUrl: 'assets/image/d5.png',
          ),
        ],
      ),
    );
  }
}
