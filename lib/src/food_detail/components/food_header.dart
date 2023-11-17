import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';

class FoodHeader extends StatelessWidget {
  final Food food;
  const FoodHeader({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: "${food.id}",
          child: Center(
            child: Image.asset(
              food.imagePath,
              height: 100,
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star_rate,
              color: Colors.amber,
              size: 28,
            ),
            Text(food.rating)
          ],
        ),
        Text(
          food.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
