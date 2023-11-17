import 'package:flutter/material.dart';

var kPrimaryColor = Color.fromARGB(255, 138, 60, 55);
var kSecondaryColor = Color.fromARGB(255, 237, 232, 232);

const kTextColor = Color(0xFF757575);
const kDefaultPaddin = 20.0;

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: kPrimaryColor,
  minimumSize: const Size.fromHeight(50), // NEW

  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);
