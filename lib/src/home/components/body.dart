import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:flutter_application_empty/src/home/components/food_menus.dart';
import 'package:flutter_application_empty/src/home/components/food_promote.dart';
import 'package:flutter_application_empty/src/home/components/home_header.dart';
import 'package:flutter_application_empty/src/home/components/search_field.dart';
import 'package:flutter_application_empty/src/home/home_controller.dart';

class Body extends StatelessWidget {
  final HomeController controller;
  const Body({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              SizedBox(
                height: kDefaultPaddin,
              ),
              SearchField(),
              SizedBox(
                height: kDefaultPaddin,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Food Menu",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FoodMenus(
                controller: controller,
              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
              FoodPromote(),
            ]),
      ),
    );
  }
}
