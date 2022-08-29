# shop_app
A new Flutter Practice.
<h1> Project look on device </h1>
<img src='https://github.com/DeveloperOrpon/Tic-Tac-Toe-Game/blob/master/Capture.PNG?raw=true' width="300px"  />


## Important Things

-  ## Use Customs theme: :tada:
(ThemeData(primarySwatch: Colors.red,)

- ## Create Model Class With Property Name: :tada:
class Product {
  final String title;
  final String price;
  final String image;
  final bool isAdded = false;
  Product({required this.title,required this.price, required this.image});
}

- ## Create Model Class Object: :tada:
final List<Product> productList = [
    Product(title: "Laptop", price: "300", image: "laptop.png")];

- ## Extended FloatingActionButton Create: :tada:
floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Open Card"),
          icon: const Icon(Icons.shopping_cart),
        ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

- ## ListView (Scrolling Items):(Do not need Colums and row) :tada:
ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: productList[index],
        );
    },
)

- ## StatefulWidget with dynamic Value: :tada:
//define :tada:
const ProductCard({super.key, required this.product});
  //take parameter dinamic
  final Product product;

//use :tada:
Text(widget.product.title)