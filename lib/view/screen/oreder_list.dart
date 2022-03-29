import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyCart extends StatelessWidget {
  bool orderExsist = true;

  EmptyCart({Key? key}) : super(key: key);

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
        backgroundColor: Color(0xFF22A45D),
        title: const Text('السلة'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined)),
        ],
      ),
      body: orderExsist
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      width: 343.h,
                      height: 90.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/image/cart.png',
                            scale: 2,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              const Text('ستيك لحم '),
                              SizedBox(
                                height: 7.h,
                              ),
                              const Text('20  شيكل '),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 343.h,
                      height: 90.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/image/cart.png',
                            scale: 2,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              const Text('ستيك لحم '),
                              SizedBox(
                                height: 7.h,
                              ),
                              const Text('20  شيكل '),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const Text(
                      'التكلفة ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 90.w,
                            height: 50.h,
                            child: Text('الاجمالي الجزئي')),
                        SizedBox(width: 190.w),
                        SizedBox(
                            width: 70.w, height: 50.h, child: Text('50 شيكل'))
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 90.w, height: 50.h, child: Text('التوصيل')),
                        SizedBox(width: 190.w),
                        SizedBox(
                            width: 70.w, height: 50.h, child: Text('10 شيكل'))
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 90.w,
                            height: 50.h,
                            child: Text(' كود الخصم')),
                        const SizedBox(width: 180),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 90.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Color(0xFF22A45D),
                                  width: 1,
                                )),
                            child: Text(
                              'إضافة ',
                              style: TextStyle(
                                  color: Color(0xFF22A45D), fontSize: 12.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 90.w, height: 50.h, child: Text('الخصم')),
                        SizedBox(width: 190.w),
                        SizedBox(
                            width: 70.w, height: 50.h, child: Text('0 شيكل'))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 90.w,
                            height: 50.h,
                            child: Text('الاجمالي ')),
                        SizedBox(width: 190.w),
                        SizedBox(
                            width: 70.w, height: 50.h, child: Text('50 شيكل'))
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'قائمة الوجبات',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/image/cart.png'),
                    const SizedBox(height: 50),
                    const Icon(
                      Icons.cleaning_services,
                      size: 35,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'سلتك فارغة',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'قائمة الوجبات',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
