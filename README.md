# shop_app
A new Flutter Practice.
## Important Things

- ## Use Customs theme:
(ThemeData(primarySwatch: Colors.red,)

- ## Create Model Class With Property Name:
class Product {
  final String title;
  final String price;
  final String image;
  final bool isAdded = false;
  Product({required this.title,required this.price, required this.image});
}

- ## Create Model Class Object:
final List<Product> productList = [
    Product(title: "Laptop", price: "300", image: "laptop.png")];

- ## Extended FloatingActionButton Create:
floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Open Card"),
          icon: const Icon(Icons.shopping_cart),
        ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

- ## ListView (Scrolling Items):(Do not need Colums and row)
ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: productList[index],
        );
    },
)

- ## StatefulWidget with dynamic Value:
//define 
const ProductCard({super.key, required this.product});
  //take parameter dinamic
  final Product product;

//use 
Text(widget.product.title)