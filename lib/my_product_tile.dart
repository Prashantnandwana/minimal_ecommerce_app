import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/products.dart';
import 'package:minimal_ecommerce_app/shop.dart';
import 'package:provider/provider.dart';

class MyProductTite extends StatelessWidget {
  final Product product;
  const MyProductTite({super.key, required this.product,});

void addToCart(BuildContext context){
  //show a dialog box to ask user to confirmto add to cart
  showDialog(context: context, builder: (context) => AlertDialog(
    content: Text("add this item to your cart"),
    actions: [
      // cancle button
      MaterialButton(onPressed: ()=>Navigator.pop(context),
      child: Text("Cancle"),
      ),
// yes button
MaterialButton(onPressed: (){
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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      child: Column(
        children: [

          // image 
          Icon(Icons.favorite),

          //name 
          Text(product.name),
          
          //discription 
          Text(product.description),


          //price + add button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // product price
              Text("\$"+product.price.toStringAsFixed(2)),
              //add to cart button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(onPressed: ()=>addToCart(context), icon: Icon(Icons.add)))
            ],
          ),
        ],
      ),
    );
  }
}