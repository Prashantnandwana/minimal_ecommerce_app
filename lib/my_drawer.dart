import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(height: 25),
          MyListTile(text: "shop", icon: Icons.home, onTap: () {}),
          MyListTile(text: "cart", icon: Icons.shopping_cart, onTap: () {}),
          MyListTile(text: "exit", icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
