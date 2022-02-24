import 'package:flutter_practice/src/state_management/provider/models/product.dart';

abstract class IProductRepository{
  Future<Product> getProduct(String id);
  Future<List<Product>> getAllProducts();
}