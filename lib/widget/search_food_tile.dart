import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';
import 'package:flutter_application_empty/src/constant.dart';

class SearchFoodTile extends StatelessWidget {
  final VoidCallback onTap;
  final Food food;

  const SearchFoodTile(
      {super.key, required this.onTap, required this.food});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {
                onTap();
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Hero(
                          tag: "${food.id}",
                          child: Image.asset(
                            food.imagePath,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: kDefaultPaddin,
                        ),
                        Text(
                          food.name,
                          style:
                              Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ))
                  ],
                ),
              ))
        ]);
  }
}
