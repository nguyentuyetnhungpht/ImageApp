import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 168),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/2.jpeg'))),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 68, right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '129',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('posts')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '129K',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('followers')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '129',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('following')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.blue,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      width: 120,
                                      height: 30,
                                      child: FlatButton(
                                        child: Text(
                                          'Contact',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFE7E7E7))),
                                      child: FlatButton(
                                        child: Text('Edit Profile'),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Nhung"),
                                Text("I am a profile on instagram"),
                                InkWell(
                                  child: new Text('my instagram'),
                                ),
                              ],
                            ),
                            Container()
                          ],
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                      height: 250,
                      color: Colors.blue,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            child:
                                const Text("He'd have you all unravel at the"),
                            color: Colors.teal[100],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Heed not the rabble'),
                            color: Colors.teal[200],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Sound of screams but the'),
                            color: Colors.teal[300],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Who scream'),
                            color: Colors.teal[400],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution is coming...'),
                            color: Colors.teal[500],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                        ],
                      )),
                  Column()
                ],
              ),
            )
          ],
        ));
  }
}
