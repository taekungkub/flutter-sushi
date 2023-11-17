import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';

void showModalSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(kDefaultPaddin),
        child: SizedBox(
          height: 200,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      filled: true, hintText: "Displayname"),
                ),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
