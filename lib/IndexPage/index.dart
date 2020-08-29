import 'package:flutter/material.dart';
import 'package:ReviewAppAlphahood/components/index.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customAppBar(),
              SizedBox(height: 20),
              userDetails(),
              SizedBox(height: 10),
              twoButtons(context),
              SizedBox(height: 10),
              bigbutton(context),
              SizedBox(height: 10),
              statsWidget(),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text("Reviews ",
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text("(70)",
                                            style: TextStyle(
                                                color: Colors.blue[800],
                                                fontSize: 16)))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("See all ",
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.chevron_right,
                                        color: Colors.blue[800], size: 30)
                                  ],
                                ),
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Image(
                              width: MediaQuery.of(context).size.width,
                              image: NetworkImage(
                                  "https://static.freemake.com/blog/wp-content/uploads/2015/10/how-to-embed-video-1000x600.jpg"))),
                      SizedBox(height: 10),
                      Container(
                          padding: EdgeInsets.only(
                              left: 30, right: 0, top: 10, bottom: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    "https://i.pinimg.com/originals/08/c8/97/08c897522ab4a8251a9c841d54a8ff9c.jpg"),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sahith Reviewed Abhishek",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "4.0",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 16),
                                              SizedBox(width: 5),
                                              Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 16),
                                              SizedBox(width: 5),
                                              Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 16),
                                              SizedBox(width: 5),
                                              Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 16),
                                              SizedBox(width: 5),
                                              Icon(Icons.star,
                                                  color: Colors.grey, size: 16),
                                            ]),
                                        SizedBox(width: 40),
                                        Text(
                                          "19min ago",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )
                                      ])
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }

  Widget bigbutton(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed: () {},
          color: Colors.white,
          textColor: Colors.black,
          child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Request Review",
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ])),
        ));
  }

  Widget twoButtons(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/dashboard");
            },
            color: Colors.white,
            textColor: Colors.black,
            child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(children: [
                  Icon(Icons.dashboard, color: Colors.orange),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Dashboard",
                  ),
                  SizedBox(
                    width: 5,
                  )
                ])),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/dbProfile");
            },
            color: Colors.white,
            textColor: Colors.black,
            child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(children: [
                  Icon(Icons.contacts, color: Colors.blue[800]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Db Profile",
                  ),
                  SizedBox(
                    width: 5,
                  )
                ])),
          ),
        ]));
  }

  Widget statsWidget() {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text("40", style: TextStyle(fontSize: 24, color: Colors.white)),
                Text("Given Reviews",
                    style: TextStyle(fontSize: 12, color: Colors.white70))
              ])),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text("30", style: TextStyle(fontSize: 24, color: Colors.white)),
                Text("Recieved Reviews",
                    style: TextStyle(fontSize: 12, color: Colors.white70))
              ])),
        ],
      ),
    );
  }

  Widget userDetails() {
    return Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 10,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          CircleAvatar(
            maxRadius: 30,
            minRadius: 30,
            backgroundImage: NetworkImage(
                "https://conandaily.files.wordpress.com/2020/04/hrithik-roshan.jpg"),
          ),
          SizedBox(width: 20),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Suraj Sharma",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                "+91 9108205639",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          )),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4.0",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(Icons.star, color: Colors.white, size: 20)
              ],
            ),
          )
        ]));
  }

  Widget customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.share,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(width: 20),
        Icon(Icons.more_vert, color: Colors.white, size: 30),
        SizedBox(width: 10),
      ],
    );
  }
}
