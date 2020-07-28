import 'package:flutter/material.dart';
import './UserPage.dart';
import './ChallengeDetailPage.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage>
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

  // ignore: non_constant_identifier_names
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
  InkWell Challenge(
      String imgVal, String title_challenge, String detail_challenge) {
    return InkWell(
        onTap: () {
          print("Container clicked");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChallengeDetailPage()));
        },
        child: Container(
          padding: EdgeInsets.all(0.0),
          width: 220.0,
          child: Card(
            child: Wrap(children: <Widget>[
              Image.asset(
                imgVal,
                fit: BoxFit.cover,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  left: 5.0,
                ),
                title: Text(
                  title_challenge,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  detail_challenge,
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  InkWell Learder_board(String imgVal, String avaVal, String name) {
    return InkWell(
        onTap: () {
          //return UserPage();
          // print("Container clicked");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserPage()));
        },
        child: Container(
          padding: EdgeInsets.all(0.0),
          width: 200.0,
          child: Card(
              child: Wrap(children: <Widget>[
            Image.asset(
              imgVal,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 5.0, left: 5.0),
                  child: CircleAvatar(
                      radius: 17, backgroundImage: AssetImage(avaVal)),
                ),
                Container(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: Text(name)),
              ],
            ),
          ])),
        ));
  }

  Container Title(String title, String icon_first) {
    return Container(
        height: 30,
        padding: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
        ),
        child: Row(children: <Widget>[
          Text(
            icon_first,
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
          ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          //iconTheme: IconThemeData(color: Colors.black),
          title: TextField(
              decoration: InputDecoration(
                  hintText: "Search for free photos and videos..",
                  prefix: Icon(
                    Icons.search,
                    color: Colors.black,
                  ))),
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height - 157),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Title('Challenge', '♜ '),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),
                          height: 210.0,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  child: Row(children: <Widget>[
                                    Challenge(
                                        "assets/challenge.jpg",
                                        "What's On Your Desk?",
                                        "5 days left ·  \$200 cash prize"),
                                    Challenge(
                                        "assets/11.jpg",
                                        "The Magic of Photo",
                                        "3 days left ·  \$100 cash prize"),
                                    Challenge("assets/4.jpeg", "Ocean Life",
                                        "CLOSED ·  \$100 cash prize"),
                                  ]),
                                ),
                              ])),
                      Title('Leaderboard', '★ '),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),
                          height: 180.0,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Learder_board(
                                    "assets/3.jpeg", "assets/4.jpeg", "Rem"),
                                Learder_board("assets/11.jpg", "assets/2.jpeg",
                                    "Hanamichi"),
                                Learder_board("assets/4.jpeg", "assets/1.jpeg",
                                    "Nawniet"),
                                Learder_board(
                                    "assets/11.jpg", "assets/2.jpeg", "Rem"),
                                Learder_board(
                                    "assets/3.jpeg", "assets/4.jpeg", "Rem"),
                              ])),
                    ],
                  ),
                )
              ],
            )));
  }
}
