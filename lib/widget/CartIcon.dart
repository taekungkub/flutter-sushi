import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_empty/src/cart/cart_controller.dart';
import 'package:flutter_application_empty/src/cart/cart_view.dart';
import 'package:provider/provider.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(
        top: -5,
        end: -5,
      ),
      badgeContent:
          Consumer<CartController>(builder: (context, value, child) {
        return Text(
          value.cartItems!.length.toString(),
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),
        );
      }),
      onTap: () {},
      child: IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.restorablePushNamed(context, CartView.routeName);
        },
      ),
    );
  }
}
