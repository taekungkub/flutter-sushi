import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';

class ItemCard extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String title;
  final Widget rightWidget;
  final VoidCallback? callback;

  const ItemCard({
    super.key,
    this.color,
    this.textColor,
    required this.title,
    required this.rightWidget,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: callback,
        child: Ink(
          height: 60,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text(title,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                rightWidget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
