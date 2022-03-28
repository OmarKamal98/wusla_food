import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JDInputText extends StatelessWidget {
  JDInputText(
      {required this.onChanged,
      required this.hintText,
      this.validator,
      this.obscureText = false,
      this.keyboardType,
      this.suffixIcon,
      this.preffixIcon,
      this.textInputAction,
      required this.controller});
  TextEditingController controller;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final TextInputAction? textInputAction;

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
    return Container(
      width: 343.w,
      height: 56.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
      child: TextFormField(
        // minLines: null,
        // maxLines: null,
        // expands: true,
        obscureText: obscureText,
        validator: (value) => validator!(value),
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          prefixIcon: preffixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.fromLTRB(16.w, 28.h, 28.h, 18.w),
          labelText: hintText,
          labelStyle: const TextStyle(
            fontSize: 16,
            color: Color(0xFF969A9D),
            fontWeight: FontWeight.w300,
          ),
          errorStyle: const TextStyle(height: 0, color: Colors.transparent),
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0xFF969A9D),
            fontWeight: FontWeight.w300,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Color(0xFF707070), width: .25)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Color(0xFF707070), width: .25)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.red, width: .75),
          ),
        ),
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF3C3C43),
        ),
      ),
    );
  }
}
