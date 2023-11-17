import 'package:flutter/material.dart';

class FoodPromote extends StatelessWidget {
  const FoodPromote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/sushi.png",
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Salemon Eggs"),
                  Text("\$21.00"),
                ],
              )
            ],
          ),
          Icon(
            Icons.favorite_outline,
            size: 28,
          )
        ],
      ),
    );
  }
}
