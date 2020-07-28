import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
      body: new ListView.builder(
        itemBuilder: (context, index){
          return new Padding(
            padding: new EdgeInsets.symmetric(vertical:2.0, horizontal: 0.0),
            child: new Card(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(3.0),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new ClipRRect(
                    child: new Image.asset("assets/inspirion.webp", fit: BoxFit.cover,),
                     borderRadius: BorderRadius.only(
                       topLeft: new Radius.circular(3.0),
                       topRight: new Radius.circular(3.0),
                     ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                         new Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                            CircleAvatar(
                                radius: 17,
                                backgroundImage: AssetImage('assets/1.jpeg')),
                             new Expanded(child: new Text('   Rem'),),
                            IconButton(
                              icon: Icon(Icons.favorite_border),
                              iconSize: 20.0,
                              onPressed: () => print('Save post'),
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark_border),
                              iconSize: 20.0,
                              onPressed: () => print('Save post'),
                            ),
                           ],
                         ),
                      ]
                    ),)
                
                ]
              ) 
            ),);
        }
      )
    );
  }
}

