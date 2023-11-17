import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Get 32% to promotion.",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white)),
              SizedBox(
                height: 20,
              ),
              Material(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(22),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(25),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPaddin),
                    child: Row(
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 50), // give it width

          Expanded(
            child: Image.asset(
              'assets/images/sushi_3.png',
              fit: BoxFit.contain,
              width: 120,
              height: 120,
            ),
          )
        ],
      ),
    );
  }
}
