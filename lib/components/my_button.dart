import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const MyButton({super.key, 
          required this.onTap, 
         required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, "/shop_page"),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
        child: child,
      ),
    );
  }
}
