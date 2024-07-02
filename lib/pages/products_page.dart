import 'package:flutter/material.dart';

import '../components/product_card.dart';


class ProductsPage extends StatelessWidget {
  final Function(String, String, String) addItem;
  static const String id = 'products_page';

  const ProductsPage({super.key, required this.addItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      imageUrl:
                          'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-15-pro-max.jpg',
                      name: 'Apple iPhone 15 Pro Max',
                      amount: '₦1,180,000.00',
                      onPressed: () {
                        addItem(
                            'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-15-pro-max.jpg',
                            'Apple iPhone 15 Pro Max',
                            '₦1,180,000.00');
                      },
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      imageUrl:
                          'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQE49_XAYcsMfuzy_k6FZQOgEItbzkWrLVvdzdeuKXmSeKOO5xwhE6fXi3GVCPTMta0JcgjAgR0-n_JzBVkDtnMYRYGMrkqu_SaIKKNys7qERu2TgpZLRxTJlweUujfwMCFt1aCCBdvIw&usqp=CAc',
                      name: 'Dell Alienware M16 R1 Intel I9...',
                      amount: '₦4,350,000.00',
                      onPressed: () {
                        addItem(
                          'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQE49_XAYcsMfuzy_k6FZQOgEItbzkWrLVvdzdeuKXmSeKOO5xwhE6fXi3GVCPTMta0JcgjAgR0-n_JzBVkDtnMYRYGMrkqu_SaIKKNys7qERu2TgpZLRxTJlweUujfwMCFt1aCCBdvIw&usqp=CAc',
                          'Dell Alienware M16 R1 Intel I9',
                          '₦4,350,000.00',
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      imageUrl:
                          'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/19/2866141/1.jpg?2604',
                      name: 'Silver Crest German Food Crusher Blender',
                      amount: '₦42,613',
                      onPressed: () {
                        addItem(
                            'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/19/2866141/1.jpg?2604',
                            'Silver Crest German Food Crusher Blender',
                            '₦42,613');
                      },
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      imageUrl:
                          'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/90/476218/1.jpg?8782',
                      name: 'Fngeen 05 Waterproof Gold Watch',
                      amount: '₦4,980',
                      onPressed: () {
                        addItem(
                          'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/90/476218/1.jpg?8782',
                          'Fngeen 05 Waterproof Gold Watch',
                          '₦4,980',
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
