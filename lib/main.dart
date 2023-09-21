import 'package:flutter/material.dart';
import 'package:netmkhzan/Screens/home_page.dart';
import 'package:netmkhzan/Screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id:(context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
