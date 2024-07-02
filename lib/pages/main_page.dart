import 'package:flutter/material.dart';
import 'package:simple_shopping_app/pages/products_page.dart';
import 'checkout_page.dart';
import 'order_successful.dart';

class MainPage extends StatefulWidget {
  static const String id = 'main_page';

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  List<Map<String, String>> checkoutItems = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addItem(String imageUrl, String name, String amount) {
    setState(() {
      checkoutItems.add({
        'imageUrl': imageUrl,
        'name': name,
        'amount': amount,
      });
      _selectedIndex = 1;
    });
  }

  void removeItem(int index) {
    setState(() {
      checkoutItems.removeAt(index);
    });
  }

  void orderItem(int index) {
    setState(() {
      checkoutItems.removeAt(index);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderSuccessful(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex == 0 ? 'Products' : 'Checkout'),
      ),
      body: PageStorage(
        bucket: bucket,
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            ProductsPage(addItem: addItem),
            CheckoutPage(items: checkoutItems, removeItem: removeItem, orderItem: orderItem),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Checkout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
