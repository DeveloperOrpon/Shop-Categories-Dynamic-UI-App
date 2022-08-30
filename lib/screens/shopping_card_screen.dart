import 'package:flutter/material.dart';
import '../custom_ui/product_card.dart';
import '../model/products.dart';

class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key, required this.selectedProduct});
  final List<Product> selectedProduct;

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Card"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Buy Now"),
        icon: const Icon(Icons.shopping_cart_checkout_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
        itemCount: widget.selectedProduct.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: widget.selectedProduct[index],
          );
        },
      ),
    );
  }
}
