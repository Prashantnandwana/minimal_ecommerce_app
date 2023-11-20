import 'package:minimal_ecommerce_app/products.dart';

class Shop {
  //products for sale
  final List<Product> _shop = [
    //Product 1
    Product(
        name: "product 1 ",
        price: 99.9,
        description: "description",
        //imagePath: imagePath)
    ),
    
      //Product 2
    Product(
        name: "product 2 ",
        price: 99.9,
        description: "description",
        //imagePath: imagePath)
    ),
      //Product 3
    Product(
        name: "product 3 ",
        price: 99.9,
        description: "description",
        //imagePath: imagePath)
    ),
      //Product 4
    Product(
        name: "product 4 ",
        price: 99.9,
        description: "description",
        //imagePath: imagePath)
    )
  ];

  // user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item){
    _cart.add(item);
  }

  // remove item from cart
  void removeFromCart (Product item){
    _cart.remove(item);
  }
}
