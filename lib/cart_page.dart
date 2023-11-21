import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/products.dart';
import 'package:minimal_ecommerce_app/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remove item from cart method
  void removeItemFromCart(BuildContext context, Product product) {
    //show a dialog box to ask user to confirmto remove from cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("remove this item from your cart"),
              actions: [
                // cancle button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancle"),
                ),
// yes button
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);

                    //add to cart
                    context.read<Shop>().addToCart(product);
                  },
                  child: Text("yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Cart Page "),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                //get individual item in the cart
                final item = cart[index];

                // return as a cart tile UI
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => removeItemFromCart(context, item),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
///  24.47