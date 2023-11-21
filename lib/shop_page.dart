import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/my_drawer.dart';
import 'package:minimal_ecommerce_app/my_product_tile.dart';
import 'package:minimal_ecommerce_app/products.dart';
import 'package:minimal_ecommerce_app/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
    const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access produsts in shop
    final products =context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
        ),
      drawer: MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [

            //shop title 

            // shop sub title

            //product list
            SizedBox(height: 550,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(25),
            itemBuilder: (context, index){
            //get each individual product from shop
            final Product = products[index];
            return MyProductTite(product: Product);
        
            //return as a product tile UI
          }),
        ),
          ],
        )

    );
  }
}