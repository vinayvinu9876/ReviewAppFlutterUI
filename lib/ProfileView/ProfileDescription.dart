import 'package:flutter/material.dart';

class ProfileDescription extends StatefulWidget {
  String url, name, phone;

  ProfileDescription(
      {@required this.url, @required this.name, @required this.phone});

  @override
  State<ProfileDescription> createState() =>
      _ProfileDescription(url: url, name: name, phone: phone);
}

class _ProfileDescription extends State<ProfileDescription> {
  String url, name, phone;

  _ProfileDescription(
      {@required this.url, @required this.name, @required this.phone});

  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "${this.url}",
                    )),
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${this.name}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("${this.phone}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      ))),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.green,
                      child: Icon(Icons.call, size: 20.0, color: Colors.white),
                      padding: EdgeInsets.all(5.0),
                      shape: CircleBorder(),
                    )),
                    Expanded(
                        child: IconButton(
                      icon: Icon(
                          open
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 35),
                      onPressed: () {
                        setState(() {
                          open = !open;
                        });
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
          Visibility(
            visible: open,
            child: Container(
                child: Column(children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: OutlineButton(
                          borderSide: BorderSide(color: Colors.blue),
                          onPressed: () {},
                          child: Row(children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text("Give Review",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold))
                          ]))),
                  SizedBox(width: 20),
                  Expanded(
                      child: OutlineButton(
                          borderSide: BorderSide(color: Colors.blue),
                          onPressed: () {},
                          child: Row(children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text("Request Review",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold))
                          ]))),
                ],
              ),
            ])),
          )
        ]));
  }
}
