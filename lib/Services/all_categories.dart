import 'dart:convert';

import '../Helper/api.dart';
import '../models/product_model.dart';

import 'package:http/http.dart' as http;

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(Url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
