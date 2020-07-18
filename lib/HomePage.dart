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
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        children: List.generate
        (5, 
        (int i) {
          return _Tile(i);
          },
        ),
        staggeredTiles: List.generate(10, (int index){
          return StaggeredTile.fit(4);
        },
      )
    )
    );
  }
}

class _Tile extends StatelessWidget{

  _Tile(this.i);
  final int i;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        child: Image.asset("assets/$i.jpeg"),
      ),
    );
  }
}