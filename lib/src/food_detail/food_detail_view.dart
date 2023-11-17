import 'package:flutter/material.dart';

import 'package:flutter_application_empty/model/food.dart';
import 'package:flutter_application_empty/src/food_detail/components/body.dart';
import 'package:flutter_application_empty/widget/CartIcon.dart';

class FoodDetailView extends StatelessWidget {
  final Food food;

  const FoodDetailView({super.key, required this.food});

  static const routeName = '/food-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [CartIcon()],
        ),
        body: Body(food: food));
  }
}
