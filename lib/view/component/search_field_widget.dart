import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

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
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        //controller: Provider.of<AppProvider>(context).searchController,
        /* onChanged: (val) {
            Provider.of<AppProvider>(context, listen: false).searchProduct(val);
          },*/
        //autofocus: false,
        style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade100),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 2.w, bottom: 5.h),
          prefixIcon: Icon(Icons.search,size: 30.sp,color: Colors.grey.shade700,)
          /*SvgPicture.asset(
            'assets/icons/search.svg',
            width: 1,
          ),*/,
          filled: true,
          fillColor: const Color(0xFFF2F2F2),
          hintStyle:  TextStyle(fontSize: 15.sp, color: Colors.grey.shade500,fontWeight: FontWeight.w400,),
          hintText: 'search_sentence'.tr(),
          focusedBorder:OutlineInputBorder(
             borderRadius: BorderRadius.circular(15.r),
             borderSide: BorderSide(width: 1.w, color: const Color(0xFFF2F2F2)),
           ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
           borderSide: BorderSide(width: 1.w, color: const Color(0xFFF2F2F2)),
          ),
          enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(width: 1.w, color: const Color(0xFFF2F2F2)),
           ),
        ),
      ),
    );
  }
}
