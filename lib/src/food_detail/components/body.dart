import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:flutter_application_empty/src/food_detail/components/add_to_cart.dart';

import 'package:flutter_application_empty/src/food_detail/components/description.dart';
import 'package:flutter_application_empty/src/food_detail/components/food_header.dart';

class Body extends StatelessWidget {
  final Food food;

  const Body({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(kDefaultPaddin),
          child: ListView(
            children: [
              FoodHeader(
                food: food,
              ),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              Text("Description",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              Description()
            ],
          ),
        )),
        AddToCart(
          food: food,
        )
      ],
    );
  }
}
