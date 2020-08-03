import 'dart:ffi';
import './NotiPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Container MyTopic(String imgVal) {
    return Container(
      padding: EdgeInsets.all(3.0),
      width: 200.0,
      child: Image.asset(
        imgVal,
        fit: BoxFit.cover,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container Profile_info(
      String number, String title, double r, double l, double t) {
    return Container(
      margin: EdgeInsets.only(
        right: r,
        top: t,
        left: l,
      ),
      child: Column(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w200,
                color: Colors.blueGrey),
          )
        ],
      ),
    );
  }

  Container Profile_donate(String text, double r, double l, double t) {
    return Container(
      margin: EdgeInsets.only(top: t, right:r, left: l),
      height: 30,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 1, color: Color(0xFFE7E7E7)),
      ),
      child: FlatButton(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.transit_enterexit,
              color: Colors.blueGrey,
              size: 8.0,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 8.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          //iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 30,
                  child: Icon(
                    Icons.transit_enterexit,
                    color: Colors.blueGrey,
                    size: 20.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75.0, right: 60.0),
                  child: Text(
                    'Nhung Nguyen',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1, color: Color(0xFFE7E7E7)),
                  ),
                  child: FlatButton(
                    color: Color.fromARGB(255, 5, 160, 129),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )),
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height - 168),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        bottom: 10.0,
                      ),
                      height: 130,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                  margin: new EdgeInsets.only(
                                      left: 10.0, bottom: 20.0, top: 0.0),
                                  height: 60,
                                  width: 60,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/11.jpg'))),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10.0,
                                            right: 60.0,
                                            bottom: 10.0,
                                            top: 20.0),
                                        child: Text(
                                          'Nhung Nguyen',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 70.0,
                                        ),
                                        height: 30,
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.blueGrey,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      //right, left,top, bottom
                                      Profile_info(
                                          '227k', 'views', 30.0, 0.0, 10.0),
                                      Profile_info(
                                        '22k',
                                        '30-days rank',
                                        100.0,
                                        0.0,
                                        10.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      //right, left,top, bottom
                                      Profile_donate(" Share", 20.0,5.0,10.0),
                                      Profile_donate(" Donate",60.0,0,10.0),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFFE7E7E7))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            child: FlatButton(
                              padding: EdgeInsets.zero,
                              child: Text(
                                'Media',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 30,
                            child: FlatButton(
                              padding: EdgeInsets.zero,
                              child: Text('Collections',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        color: Color.fromARGB(225, 249, 249, 249),
                        height: 470,
                        child: GridView.count(
                            primary: false,
                            padding: const EdgeInsets.all(5.0),
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                            crossAxisCount: 1,
                            children: <Widget>[
                              MyTopic("assets/pexels-8.jpg"),
                              MyTopic("assets/challenge.jpg"),
                              MyTopic("assets/inspiration.webp"),
                              MyTopic("assets/desk.jpg"),
                              MyTopic("assets/inspirion.webp"),
                              MyTopic("assets/4.jpeg"),
                              MyTopic("assets/5.jpeg"),
                            ])),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
