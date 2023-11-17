import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;
  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Hero(
              tag: "${food.id}",
              child: Image.asset(
                food.imagePath,
                height: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              food.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('\$${food.price}'),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    Text(food.rating),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
