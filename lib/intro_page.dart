import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag,size: 72,
          color: Theme.of(context).colorScheme.inversePrimary,),
          SizedBox(height: 20,),
          Text("minimal Shop"),
          SizedBox(height: 25,),
          Text("premium quality products"),
          MyButton(onTap: (){}, child: Icon(Icons.arrow_forward))

          
        
          
        ],
      ),
    );
  }
}