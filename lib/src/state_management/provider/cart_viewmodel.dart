import 'package:flutter/material.dart';
import 'package:flutter_practice/src/state_management/provider/models/product.dart';

class CartViewModel extends ChangeNotifier{
  int _count=0;

  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }
  int get count=>_count;
}