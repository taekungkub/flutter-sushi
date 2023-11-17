import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/cart.dart';
import 'package:flutter_application_empty/src/cart/cart_controller.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final CartItem cart;
  const CartTile({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context);

    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    cart.image,
                    height: 50,
                  ),
                  SizedBox(
                    width: kDefaultPaddin,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cart.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${cart.price.toString()}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey[700]),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => {
                                  cartController.updateQuantity(
                                      cart.id, cart.quantity - 1)
                                },
                                icon: Icon(
                                  Icons.remove,
                                ),
                                iconSize: 15,
                              ),
                              Text(cart.quantity.toString()),
                              IconButton(
                                onPressed: () => {
                                  cartController.updateQuantity(
                                      cart.id, cart.quantity + 1)
                                },
                                icon: Icon(Icons.add),
                                iconSize: 15,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(('\$${cart.quantity * cart.price}').toString()),
              IconButton(
                  onPressed: () {
                    cartController.removeFromCart(cart.id);
                  },
                  icon: Icon(Icons.delete))
            ],
          )
        ],
      ),
    );
  }
}
