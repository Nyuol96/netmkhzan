import 'package:netmkhzan/Helper/api.dart';
import 'package:netmkhzan/models/product_model.dart';

class AddProducts {
  Future<ProductModel> addProducts(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String Category}) async {
    Map<String, dynamic> data = await Api().post(url: 'url', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category':Category,
    });
    return ProductModel.fromJson(data);
  }
}
