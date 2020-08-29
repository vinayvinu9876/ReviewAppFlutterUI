import 'package:flutter/material.dart';
import 'package:ReviewAppAlphahood/components/index.dart';
import 'ProfileDescription.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              CustomAppBar(
                  title: "Who viewed your profile",
                  onBackTap: () {
                    Navigator.pushNamed(context, "/dashboard");
                  }),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(15),
                child: searchInputBox(context),
              ),
              Column(children: [
                ProfileDescription(
                    url:
                        "https://i.pinimg.com/736x/2f/10/11/2f10116422c6ee4546ddab95eefec2b1.jpg",
                    name: "Sakshi Sharma",
                    phone: "+91-9108205639"),
                ProfileDescription(
                    url:
                        "https://sfwallpaper.com/images/cute-indian-girls-wallpaper-10.jpg",
                    name: "Nirmala Sitharaman",
                    phone: "+91-8970980354"),
              ])
            ],
          ),
        )));
  }

  Widget searchInputBox(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.blue[700]),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Image(
                    image: AssetImage("images/search-account.png"),
                    height: 35,
                    width: 35)),
            Expanded(
                flex: 6,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "View Profile Privately",
                      hintStyle: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                )),
            Expanded(
              flex: 2,
              child: Switch(
                value: true,
                onChanged: (value) {
                  print(value);
                },
                activeTrackColor: Colors.lightBlueAccent,
                activeColor: Colors.blue,
              ),
            )
          ],
        ));
  }
}
