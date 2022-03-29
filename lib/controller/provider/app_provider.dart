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

  List<DepartmentFood> department=[
    DepartmentFood(depName: 'مقلوبة فلسطيمية باللحمة', chafeName: 'Omar Abo Maghasib', rate: '4.5', depImage: 'depImage'),
  ];


}
