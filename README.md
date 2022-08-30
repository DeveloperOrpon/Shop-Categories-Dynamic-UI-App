# shop_app
A new Flutter Practice.
<h1> Project look on device </h1>
<img src='https://github.com/DeveloperOrpon/Shop-Categories-Dynamic-UI-App/blob/main/shopApp.gif?raw=true' width="300px"  />


## Important Things

-  ## Use Customs theme: :tada:
(ThemeData(primarySwatch: Colors.red,)

- ## Create Model Class With Property Name: :tada:
class Product {<br>
  final String title;<br>
  final String price;<br>
  final String image;<br>
  final bool isAdded = false;<br>
  Product({required this.title,required this.price, required this.image});<br>
}

- ## Create Model Class Object: :tada:
final List<Product> productList = [<br>
    Product(title: "Laptop", price: "300", image: "laptop.png")];

- ## Extended FloatingActionButton Create: :tada:
floatingActionButton: FloatingActionButton.extended(<br>
          onPressed: () {},<br>
          label: const Text("Open Card"),<br>
          icon: const Icon(Icons.shopping_cart),<br>
        ),<br>
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

- ## ListView (Scrolling Items):(Do not need Colums and row) :tada:
ListView.builder(<br>
          itemCount: productList.length,<br>
          itemBuilder: (context, index) {<br>
            return ProductCard(<br>
              product: productList[index],<br>
        );
    },
)

- ## StatefulWidget with dynamic Value: :tada:
//define :tada:;<br>
const ProductCard({super.key, required this.product});<br>
  //take parameter dinamic  :tada: <br>
  final Product product;<br>

//use :tada:
Text(widget.product.title)
  
  - ## MediaQuery for responsive UI: :tada:
  mq = MediaQuery.of(context).size;
  //Use :tada:;<br>
  margin: EdgeInsets.symmetric(<br>
        horizontal: mq.width * 0.02,<br>
        vertical: mq.width * 0.02,<br>
      ),

  - ## Navigate UI: :tada:

  Navigator.push(context,MaterialPageRoute(<br>
  builder: (context) => ShoppingCardScreen(<br>
  //seleted items filtering items List :tada: <br>
  electedProduct: productList.where((element) => element.isAdded == true).toLis(),<br>),),);
