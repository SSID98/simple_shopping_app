import 'package:flutter/material.dart';

import 'custom_button.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String amount;
  final VoidCallback onPressed;

  const ProductCard({super.key,
    required this.imageUrl,
    required this.name,
    required this.amount,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: NetworkImage(imageUrl,), height: 150, width: double.infinity, fit: BoxFit.contain),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(name, style: const TextStyle(fontSize: 20, color: Color(0xff393F47))),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(amount, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
            ),
            const SizedBox(height: 10),
            CustomButton(onPress: onPressed, colour: Colors.amber[800], label: 'ADD TO CART', )
          ],
        ),
      ),
    );
  }
}
