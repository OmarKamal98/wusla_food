import 'package:flutter/material.dart';

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
}
