import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/products.dart';

class MyProductTite extends StatelessWidget {
  final Product product;
  const MyProductTite({super.key, required this.product,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          // image 
          Icon(Icons.favorite),

          //name 
          Text(product.name),
          
          //discription 
          Text(product.description),


          //price + add button
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}