import 'dart:convert';

import 'package:netmkhzan/Helper/api.dart';
import 'package:netmkhzan/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
List<dynamic> data= await Api().get(Url: 'https://fakestoreapi.com/products');
      
      List<ProductModel> productList = [];

      for (int i = 0; i < data.length; i++) {
        productList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productList;
    
  }
}
