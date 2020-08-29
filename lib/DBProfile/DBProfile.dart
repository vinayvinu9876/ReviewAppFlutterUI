import 'package:flutter/material.dart';
import 'package:ReviewAppAlphahood/components/index.dart';

class DBProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Container(
          height: height,
          width: width,
          color: Colors.blue[800],
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 30, left: 10, right: 0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/");
                          },
                          icon: Icon(Icons.chevron_left,
                              color: Colors.white, size: 40)),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.blue[500],
                        child:
                            Icon(Icons.create, size: 20.0, color: Colors.white),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Flexible(
                    child: SingleChildScrollView(
                  child: Container(
                    height: height * 0.75,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.12),
                        Text("Hirthik Roshan",
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.work, color: Colors.grey[400], size: 20),
                            SizedBox(width: 5),
                            Text(
                              "ui/ux Designer - xyz Technologies",
                              style: TextStyle(color: Colors.black87),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(children: [
                                RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2.0,
                                  fillColor: Colors.blue[800],
                                  child: Icon(Icons.smartphone,
                                      size: 30.0, color: Colors.white),
                                  padding: EdgeInsets.all(10.0),
                                  shape: CircleBorder(),
                                ),
                                SizedBox(height: 10),
                                Text("Call",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16))
                              ]),
                              SizedBox(width: 20),
                              Column(children: [
                                RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2.0,
                                  fillColor: Colors.blue[800],
                                  child: Icon(Icons.map,
                                      size: 30.0, color: Colors.white),
                                  padding: EdgeInsets.all(10.0),
                                  shape: CircleBorder(),
                                ),
                                SizedBox(height: 10),
                                Text("Navigate",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16))
                              ]),
                            ]),
                        SizedBox(height: 15),
                        Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              profileButton(Icons.person, "About Me"),
                              SizedBox(height: 10),
                              profileButton(Icons.timer, "Office Hours"),
                              SizedBox(height: 10),
                              profileButton(
                                  Icons.stars, "Awards And Achievements"),
                            ])),
                        SizedBox(height: 4.6),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            new Align(
                alignment: FractionalOffset.topCenter,
                child: Container(
                    padding: EdgeInsets.only(top: height * 0.10),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://timesofindia.indiatimes.com/thumb/msid-77432383,width-1200,height-900,resizemode-4/.jpg")))),
          ])),
    );
  }

  Widget profileButton(IconData icon, String title) {
    return Container(
        padding: EdgeInsets.all(15),
        color: Colors.blue[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Icon(icon, color: Colors.white, size: 25),
            ),
            Expanded(
                flex: 6,
                child: Text(
                  "$title",
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, letterSpacing: 0.5),
                )),
            Expanded(
              flex: 2,
              child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
            )
          ],
        ));
  }
}
