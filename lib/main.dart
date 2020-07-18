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

  void onTappedBar(int index)
  {
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
    return new Scaffold
    (
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar
      (
        onTap: onTappedBar,
        currentIndex:  _currentIndex,
        items: 
        [
          BottomNavigationBarItem( 
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem( 
            icon:  Icon(Icons.list),
            title:  Text("List"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload),
            title: Text("Upload")
            ),
          BottomNavigationBarItem( 
            icon:  Icon(Icons.notifications),
            title:  Text("Notifications")
          ),
          BottomNavigationBarItem( 
            icon:  Icon(Icons.verified_user),
            title: Text("User")
          ),
        ],
      )
    );
  }
}