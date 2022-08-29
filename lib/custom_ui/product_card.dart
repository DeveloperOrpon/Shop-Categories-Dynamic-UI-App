import 'package:flutter/material.dart';
import '../model/products.dart';
import '../screens/add_product_screen.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  //take parameter dinamic
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: mq.width * 0.02,
        vertical: mq.width * 0.02,
      ),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15.0),
        leading: Image.asset('images/${widget.product.image}'),
        title: Text(
          widget.product.title,
          style: const TextStyle(
            fontSize: 20.2,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("${widget.product.price}৳"),
        trailing: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_rounded),
          label: const Text("Add"),
          style: ElevatedButton.styleFrom(
            elevation: 5,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(17.0),
          ),
        ),
      ),
    );
  }
}
