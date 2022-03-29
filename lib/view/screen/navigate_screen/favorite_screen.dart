import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/favorite_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios,size: 20.sp,color: Colors.black,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('favorite'.tr(),style: const TextStyle(color: Colors.black),),
      ),
      body: ListView(
        children:const [
           FavoriteWidget(),
           FavoriteWidget(),
           FavoriteWidget(),
           FavoriteWidget(),
           FavoriteWidget(),
        ],
      ),
    );
  }
}
