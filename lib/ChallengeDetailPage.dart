import 'package:flutter/material.dart';


class ChallengeDetailPage extends StatefulWidget {
  @override
  _ChallengeDetailPageState createState() => _ChallengeDetailPageState();
}

class _ChallengeDetailPageState extends State<ChallengeDetailPage> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
        title: new Text("challenge detail Page"),
      ),
       body: new Center(
        child: new Text("this is challenge detail page")
      ),
    );
  }
}