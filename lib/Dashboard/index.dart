import 'package:flutter/material.dart';
import 'package:ReviewAppAlphahood/components/index.dart';

class DashboardIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Container(
            child: Column(
          children: [
            CustomAppBar(
              title: "Dashboard",
              onBackTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          displayCard(context,
                              title: "profile Views",
                              imageUrl: "images/search-account.png",
                              navName: "/profileView"),
                          SizedBox(width: 10),
                          displayCard(context,
                              title: "profile Insights",
                              imageUrl: "images/pie.png",
                              navName: "/profileInsights")
                        ]),
                    SizedBox(height: 20),
                    accountActivityCard(),
                  ],
                )),
          ],
        )));
  }

  Widget displayCard(BuildContext context,
      {@required String title,
      @required String imageUrl,
      @required String navName}) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, "$navName");
        },
        child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              width: 130,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("$imageUrl"),
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                  Text(title,
                      style: TextStyle(
                          letterSpacing: 0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600))
                ],
              ),
            )));
  }

  Widget accountActivityCard() {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Icon(Icons.settings, color: Colors.red, size: 40),
                SizedBox(width: 12),
                Text(
                  "Account Activity",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    fontSize: 16,
                  ),
                )
              ]),
              Icon(Icons.chevron_right, color: Colors.black, size: 40),
            ],
          ),
        ));
  }
}
