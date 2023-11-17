import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/cart/cart_controller.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:flutter_application_empty/widget/cart_tile.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                  itemCount: cart.cartItems!.length,
                  itemBuilder: (context, index) {
                    return CartTile(
                      cart: cart.cartItems![index],
                    );
                  }),
            ),
          ),
          Container(
              padding: EdgeInsets.all(25),
              color: kPrimaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '\$${cart.calculateTotal().toString()}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
