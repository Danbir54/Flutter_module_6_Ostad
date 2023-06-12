import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Shopping List',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Cart is empty')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Apples'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Bananas'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Milk'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Bread'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Eggs'),
          ),
          // Add more ListTiles for other shopping items
        ],
      ),
    );
  }
}
