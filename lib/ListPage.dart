import 'package:flutter/material.dart';

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
  Container MyTopic(String imgVal){
    return Container(
                padding: EdgeInsets.all(3.0),
                width: 200.0,
                child: Image.asset(
                  imgVal,
                  fit: BoxFit.cover,),
              );
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
            )
          )
        ),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(7.0,0,7.0,0),
            children: <Widget>[
            MyTopic("assets/3.jpeg"),
            MyTopic("assets/4.jpeg"),
            MyTopic("assets/5.jpeg"),
            MyTopic("assets/1.jpeg"),
            MyTopic("assets/4.jpeg"),
            MyTopic("assets/1.jpeg"),
            MyTopic("assets/2.jpeg"),
            MyTopic("assets/3.jpeg"),
            MyTopic("assets/3.jpeg"),
            ],
          ),
      ),
      
    );
  }
}