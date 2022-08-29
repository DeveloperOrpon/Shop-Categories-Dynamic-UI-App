import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_ui/product_card.dart';
import '../model/products.dart';

//For media query
late Size mq;

class AddProdectScreen extends StatefulWidget {
  const AddProdectScreen({super.key});

  @override
  State<AddProdectScreen> createState() => _AddProdectScreenState();
}

class _AddProdectScreenState extends State<AddProdectScreen> {
  final List<Product> productList = [
    Product(title: "Laptop", price: "300", image: "laptop.png"),
    Product(title: "Watch", price: "3", image: "product.png"),
    Product(title: "Toys", price: "2", image: "puzzle.png"),
    Product(title: "Bag", price: "10", image: "bag.png"),
    Product(title: "Shoes", price: "6", image: "sneakers.png"),
    Product(title: "Mobile", price: "3", image: "mobile.png"),
    Product(title: "Calculator", price: "1.5", image: "calculator.png"),
    Product(title: "Reading Books", price: "3", image: "read.png"),
    Product(title: "Tables", price: "5", image: "desk.png"),
    Product(title: "Story Books", price: "3.5", image: "story.png"),
  ];
  @override
  Widget build(BuildContext context) {
    // initaial media querry
    mq = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Shop It App"),
          centerTitle: true,
          //CupertinoIcons look beautifull
          leading: const Icon(CupertinoIcons.home),
          actions: <Widget>[
            IconButton(
              //use only icon
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        // Button card button
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Open Card"),
          icon: const Icon(Icons.shopping_cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: productList[index],
            );
          },
        ));
  }
}
