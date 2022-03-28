import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wusla_food/view/component/checkout_inputfie.dart';

class Checkout extends StatelessWidget {
  GlobalKey<FormState> checkoutFormkey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController shippingMethodController = TextEditingController();

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
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Checkout',
            style: TextStyle(fontSize: 17.sp, color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Form(
          key: checkoutFormkey,
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  // Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  //   child: SvgPicture.asset('assets/svg/shape.svg',
                  //       width: 30.0, height: 30.0),
                  // ),
                  SizedBox(
                    height: 72.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      'Step1',
                      style:
                          TextStyle(fontSize: 13.sp, color: Colors.grey[400]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, bottom: 20.h),
                    child: Text(
                      'Shipping',
                      style:
                          TextStyle(fontSize: 40.sp, color: Color(0xFF0D0E10)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: nputTextCheck(
                      hintText: 'FULL NAME',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: fullNameController,
                      onChanged: (val) {},
                      validator: (value) {
                        if (value == null || value.length == 0) {
                          return 'هذا الحقل مطلوب ';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: nputTextCheck(
                      hintText: 'ADDRESS',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: addressController,
                      onChanged: (val) {},
                      validator: (value) {
                        if (value == null || value.length == 0) {
                          return 'هذا الحقل مطلوب ';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: nputTextCheck(
                      hintText: 'CITY',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: cityController,
                      onChanged: (val) {},
                      validator: (value) {
                        if (value == null || value.length == 0) {
                          return 'هذا الحقل مطلوب ';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: nputTextCheck(
                      hintText: 'COUNTRY',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: countryController,
                      onChanged: (val) {},
                      validator: (value) {
                        if (value == null || value.length == 0) {
                          return 'هذا الحقل مطلوب ';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: nputTextCheck(
                      hintText: 'SHIPPING METHOD',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: shippingMethodController,
                      onChanged: (val) {},
                      validator: (value) {
                        if (value == null || value.length == 0) {
                          return 'هذا الحقل مطلوب ';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 343.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFFE28952),
                                  Color(0xFFC55B3D),
                                ],
                              )),
                          child: Text(
                            'Next',
                            style:
                                TextStyle(color: Colors.white, fontSize: 28.sp),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                      // PrimaryButton(
                      //   widt: 343.w,
                      //   hieg: 50.h,
                      //   onTap: () {
                      //     if (checkoutFormkey.currentState!.validate()) {
                      //     } else {
                      //       ScaffoldMessenger.of(context).showSnackBar(
                      //         const SnackBar(
                      //           content: Text('Error Input'),
                      //           backgroundColor: Colors.red,
                      //         ),
                      //       );
                      //     }
                      //   },
                      //   color: const Color(0xFF22A45D),
                      //   label: 'Next',
                      // ),
                      ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
