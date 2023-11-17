import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedMenu;
  const CustomBottomNavBar({Key? key, required this.selectedMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
            top: false,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      color: selectedMenu == 1
                          ? kPrimaryColor
                          : inActiveIconColor,
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                      )),
                  IconButton(
                      onPressed: () {},
                      color: selectedMenu == 1
                          ? kPrimaryColor
                          : inActiveIconColor,
                      icon: Icon(
                        Icons.home,
                      ))
                ])));
  }
}
