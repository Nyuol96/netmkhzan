import 'package:flutter/foundation.dart';

import '../Helper/api.dart';
import '../models/product_model.dart';

class UpdateProductservice {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id,
      required String Category}) async {
    print('product id=$id');
    Map<String, dynamic> data = await Api().put(url: 'url', body: {
      "title": title,
      "price": price,
      'description': description,
      'image': image,
      'id': id,
      'Category': Category,
    });
    return ProductModel.fromJson(data);
  }
}
