import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/src/landing_page/landing_view.dart';
import 'package:flutter_practice/src/list_practice/list_app.dart';
import 'package:flutter_practice/src/list_practice/multiple_list.dart';
import 'package:flutter_practice/src/list_practice/question/app.dart';
import 'package:flutter_practice/src/navigation/navigation_app.dart';
import 'package:flutter_practice/src/state_management/provider/app.dart';
import 'package:flutter_practice/src/state_management/provider/data/repositories/product_repsitory.dart';
import 'package:flutter_practice/src/state_management/provider/models/product.dart';

void main() async{
  //runApp(MyApp());
  // Dio _dio=Dio();
  // ProductRepository repository=ProductRepository(_dio);
  // Product product=await repository.getProduct("1");
  // print("Product: ${product.id}");

  // List<Product> productList=await repository.getAllProducts();
  // print("List: ${productList[0].price}");
  //runApp(const ProviderApp());

  //runApp(ListApp());
  //runApp(MultiListApp());
  //runApp(NavigationApp());
  //runApp(QuestionApp());

  runApp(MyColorApp());
}

