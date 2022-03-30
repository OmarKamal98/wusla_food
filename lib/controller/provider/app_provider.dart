import 'package:flutter/material.dart';

import '../../modle/department_model.dart';

class AppProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  RangeValues priceValues = const RangeValues(0, 200);
  double distanceValues = 0;

  priceRangeValueFun(val) {
    priceValues = val;
    notifyListeners();
  }

  distanceRangeValueFun(val) {
    distanceValues = val;
    notifyListeners();
  }

  /////////////////////////////////////////////////
///////////////////////////////////////////////////
////////////////dummy data////////////////////////

  List<DepartmentFood> department = [
    DepartmentFood(
        depName: 'مقلوبة فلسطيمية باللحمة',
        chafeName: 'Omar Abo Maghasib',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'منسف اردني باللحمة',
        chafeName: 'نائل النجار',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'مفتول فلسطيني بورك الحبش',
        chafeName: 'محمد عرفة',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'مقلوبة فلسطيمية باللحمة',
        chafeName: 'محمد صايمة',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'مقلوبة الباذنجان باللحمة',
        chafeName: 'Alaa Alsrhi',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'مقلوبة فلسطيمية باللحمة',
        chafeName: 'دعاء جبر',
        rate: '4.5',
        depImage: 'depImage'),
    DepartmentFood(
        depName: 'مفتول فلسطيني بورك الحبش',
        chafeName: 'ساهر سليم',
        rate: '4.5',
        depImage: 'depImage'),
  ];
}
