import 'package:flutter/material.dart';
import 'package:simple_shopping_app/pages/checkout_page.dart';
import 'package:simple_shopping_app/pages/main_page.dart';
import 'package:simple_shopping_app/pages/products_page.dart';


void main() {
  runApp(const SimpleShoppingApp());
}

class SimpleShoppingApp extends StatelessWidget {
  const SimpleShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainPage.id,
      routes: {
        MainPage.id:  (context) => const MainPage(),
        ProductsPage.id: (context) =>  ProductsPage(addItem: (string , strings , stringss ) {  },),
        CheckoutPage.id: (context) =>  CheckoutPage(items: const [], removeItem: (intt) {  }, orderItem: (intt ) {  },),
      },
    );
  }
}