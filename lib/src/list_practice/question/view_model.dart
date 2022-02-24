import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier{
  List<int> _intList=[1,2,3,4,5,6,7,8,9];

  List<int> get intList => _intList;

  void add(int a){
    _intList.add(a);
    notifyListeners();
  }
  void remove(int b){
    _intList.remove(b);
    notifyListeners();
  }
}