import 'dart:convert';

import 'package:netmkhzan/models/product_model.dart';

import 'package:http/http.dart' as http;

import '../Helper/api.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesService(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(Url: 'https://fakestoreapi.com/products/$categoryName');

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
