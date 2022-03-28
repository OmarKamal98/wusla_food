import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  bool orderExsist = false;

  EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shop order'),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 320,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 1.0,
                            spreadRadius: 5.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white60,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 1.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Row(
                        children: [
                          // Image.asset(
                          //   'assets/images/cart.png',
                          //   scale: 2,
                          // ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              Text('ستيك لحم '),
                              Text('20  شيكل '),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 320,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 1.0,
                            spreadRadius: 5.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white60,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 1.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Row(
                        children: [
                          // Image.asset(
                          //   'assets/images/cart.png',
                          //   scale: 2,
                          // ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              Text('ستيك لحم '),
                              Text('20  شيكل '),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'التكلفة ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    Row(
                      children: const [
                        Text('الاجمالي الجزئي'),
                        SizedBox(width: 180),
                        Text('50 شيكل')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text('الاجمالي الجزئي'),
                        SizedBox(width: 180),
                        Text('50 شيكل')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text('الاجمالي الجزئي'),
                        const SizedBox(width: 180),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('إضافة '))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text('الاجمالي الجزئي'),
                        SizedBox(width: 180),
                        Text('50 شيكل')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text('الاجمالي الجزئي'),
                        SizedBox(width: 180),
                        Text('50 شيكل')
                      ],
                    ),
                    const SizedBox(
                      height: 50,
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
                    // Image.asset('assets/image/cart.png'),
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
