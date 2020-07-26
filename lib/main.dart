import 'package:first_app/ListPage.dart';
import 'package:first_app/NotiPage.dart';
import 'package:first_app/UploadPage.dart';
import 'package:first_app/UserPage.dart';
import 'package:first_app/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ListPage(),
    UploadPage(),
    NotiPage(),
    UserPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Scaffold(
            body: TabBarView(
              children: _children,
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: new TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite_border),
                  ),
                  Tab(
                    icon: Icon(Icons.file_upload),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications_none),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  ),
                ],
                unselectedLabelColor: Colors.black,
                labelColor: Color.fromARGB(225,5,160,129),
                indicatorColor: Colors.transparent,
              ),
            )));
  }
}
