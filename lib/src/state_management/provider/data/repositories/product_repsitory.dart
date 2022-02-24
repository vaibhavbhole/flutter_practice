import 'package:dio/dio.dart';
import 'package:flutter_practice/src/state_management/provider/data/repositories/product_repository_interface.dart';
import 'package:flutter_practice/src/state_management/provider/models/product.dart';

class ProductRepository implements IProductRepository {
  final Dio _dio;

  ProductRepository(this._dio);

  @override
  Future<List<Product>> getAllProducts() async {
    Map<String, dynamic> manyJson = {
      "products": [
        {
          "id": "1",
          "name": "Apple MacBook Pro 16",
          "description":
              "Apple MacBook Pro 16 with Touch Bar, 9th-Gen 8-Core Intel i9 2.4GHz, 32GB RAM, 512GB SSD, AMD Radeon Pro 5300M 4GB, Space Gray, Late 2019",
          "brand": "Apple",
          "price": "2969",
          "category": "laptop"
        },
        /* ... */
        {
          "id": "15",
          "name": "Logitech MK295 Wireless Mouse & Keyboard Combo",
          "description":
              "Logitech MK295 Wireless Mouse & Keyboard Combo with SilentTouch Technology, Full Numpad, Advanced Optical Tracking, Lag-Free Wireless, 90% Less Noise - Graphite",
          "brand": "Logitech",
          "price": "26",
          "category": "accessories"
        }
      ]
    };
    var listJson = manyJson['products'] as List;
    List<Product> productList =
        listJson.map((productJson) => Product.fromJson(productJson)).toList();

    return productList;
  }

  @override
  Future<Product> getProduct(String id) async {
    Map<String, dynamic> productJson = {
      "id": "1",
      "name": "Apple MacBook Pro 16",
      "description":
          "Apple MacBook Pro 16 with Touch Bar, 9th-Gen 8-Core Intel i9 2.4GHz 32GB RAM, 512GB SSD AMD Radeon Pro 5300M 4GB Space Gray Late 2019",
      "brand": "Apple",
      "price": "2969",
      "category": "laptop"
    };
    var product = Product.fromJson(productJson);
    await Future.delayed(const Duration(milliseconds: 800));
    return product;
  }
}
