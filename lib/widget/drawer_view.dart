import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 25.0, right: 50),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45)]),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Taekungkub",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(child: _buildRow(Icons.abc, "Home"), onTap: () {}),
                  br(),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.abc, "Home"), onTap: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget br() {
    return SizedBox(height: 13);
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.grey.shade400,
    );
  }

  Widget _buildRow(IconData icon, String tile) {
    final TextStyle tStyle = TextStyle(fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            tile,
            style: tStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
