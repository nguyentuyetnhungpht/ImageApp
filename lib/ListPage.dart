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
      String imgVal1,String imgVal2,String imgVal3, String title_challenge, String detail_challenge,) {
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
              Row(
                children: <Widget>[
                  Image.asset(
                  imgVal1,
                  width:212.0,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                ],
              ),
              Row(children: <Widget>[
                Image.asset(
                  imgVal2,
                  width:112.0,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  imgVal3,
                  width:100.0,
                  height: 60,
                  fit: BoxFit.cover,
                ),],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  left: 10.0,
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
  InkWell Learder_board(String imgVal, String avaVal, String name, String media_number) {
    return InkWell(
        onTap: () {
          //return UserPage();
          // print("Container clicked");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserPage()));
        },
        child: Container(
          padding: EdgeInsets.all(0.0),
          width: 150.0,
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
                      radius: 15, backgroundImage: AssetImage(avaVal)),
                ),
                Container(
                    padding: EdgeInsets.only(top: 8.0, left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(name,textAlign: TextAlign.left,),
                        Text(
                          media_number,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300)
                        ),]
                    )
                )
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
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 13.0),
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
                      Title('Challenge', '📷 '),
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
                                        "assets/challenge.jpg","assets/desk.jpg","assets/inspirion.webp",
                                        "What's On Your Desk?",
                                        "5 days left ·  \$200 cash prize"),
                                    Challenge(
                                        "assets/desk.jpg","assets/workhome1.jpeg", "assets/workhome2.jpeg",
                                        "At Home",
                                        "3 days left ·  \$100 cash prize"),
                                    Challenge("assets/0.jpeg","assets/1.jpeg","assets/4.jpeg","Ocean Life",
                                        "CLOSED ·  \$100 cash prize"),
                                  ]),
                                ),
                              ])),
                      Title('Trending photographers', '🔥 '),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),
                          height: 150.0,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Learder_board(
                                    "assets/3.jpeg", "assets/4.jpeg", "Nawnie","20 Medias"),
                                Learder_board("assets/11.jpg", "assets/2.jpeg",
                                    "Akashi", "19 Medias"),
                                Learder_board("assets/4.jpeg", "assets/1.jpeg",
                                    "Laviewi","17 Medias"),
                                Learder_board(
                                    "assets/11.jpg", "assets/2.jpeg", "Agileni","15 Medias"),
                                Learder_board(
                                    "assets/3.jpeg", "assets/4.jpeg", "Yamam","10 Medias"),
                              ])),
                    ],
                  ),
                )
              ],
            )));
  }
}
