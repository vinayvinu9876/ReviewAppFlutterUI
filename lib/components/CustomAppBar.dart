import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String title;
  Function onBackTap;

  CustomAppBar({@required this.title, @required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.blue[700],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white, size: 35),
                onPressed: this.onBackTap),
            SizedBox(height: 5),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400)))
          ],
        ));
  }
}
