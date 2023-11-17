import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/cart.dart';
import 'package:flutter_application_empty/model/food.dart';
import 'package:flutter_application_empty/src/cart/cart_controller.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatefulWidget {
  final Food food;
  const AddToCart({super.key, required this.food});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int _quantity = 1;

  void onIncreaseItem() {
    setState(() {
      _quantity++;
    });
  }

  void onDecreaseItem() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context);

    return Container(
      padding: EdgeInsets.all(25),
      color: kPrimaryColor,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '\$${widget.food.price}',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          onDecreaseItem();
                        },
                        icon: Icon(Icons.remove))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _quantity.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          onIncreaseItem();
                        },
                        icon: Icon(Icons.add))),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber),
              onPressed: () {
                cartController.onAddToCart(CartItem(
                    id: widget.food.id,
                    name: widget.food.name,
                    price: widget.food.price,
                    image: widget.food.imagePath,
                    quantity: _quantity));

                _quantity = 1;
              },
              child: Text('Add to cart'),
            )
          ]),
    );
  }
}
