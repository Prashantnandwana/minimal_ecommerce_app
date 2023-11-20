import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/intro_page.dart';
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
          MyListTile(
            text: "shop",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyListTile(
              text: "cart",
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/cart_page");
              }),
          MyListTile(
              text: "exit",
              icon: Icons.logout,
              onTap: () =>Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => IntroPage()),
  (Route<dynamic> route) => route.settings.name != '/intro_page',
              ),
          )
        ],
      ),
    );
  }
}
