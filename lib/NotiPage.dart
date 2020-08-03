import 'package:first_app/UserPage.dart';
import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {
  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage>
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
  Container Button_Detail(String deadline, String price) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      height: 55,
      width: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(width: 1, color: Color(0xFFE7E7E7))),
      child: FlatButton(
        child: Row(
          children: <Widget>[
            Text(deadline,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                )),
            Text("                                     "),
            Text(price,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ))
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Container MyTopic(String imgVal) {
    return Container(
      padding: EdgeInsets.all(3.0),
      width: 180.0,
      child: Image.asset(
        imgVal,
        fit: BoxFit.cover,
      ),
    );
  }

  Row Heading_Title(String title) {
    return Row(children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 10.0, top: 50.0, bottom: 10.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset(
              "assets/challenge.jpg",
              fit: BoxFit.cover,
            )),
            Container(
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 308),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      height: 450,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                              bottom: 2.0,
                            ),
                            child: Text(
                              "What's On Your Desk?",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 30.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Presented by ',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Pexel',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Button_Detail("Deadline", "4 days left"),
                          Button_Detail("Prize", " \$200 cash prize"),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            height: 40,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                  width: 1, color: Color(0xFFE7E7E7)),
                              color: Color.fromARGB(255, 249, 249, 249),
                            ),
                            child: FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Ready to win the challenge?',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 178, 178, 178),
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    ' ✿',
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          //Button Submit photo
                          Container(
                            margin: EdgeInsets.only(
                              top: 50.0,
                            ),
                            height: 50,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                  width: 1, color: Color(0xFFE7E7E7)),
                              color: Color.fromARGB(255, 83, 175, 162),
                            ),
                            child: FlatButton(
                              child: Text(
                                'Submit My Photo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '1.17K photographers ',
                                  style: TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'have joined the challenge',
                                  style: TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                      child: Column(children: <Widget>[
                    Heading_Title("Challenge"),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                      child: Text(
                        "A person's desk can really tell a lot about their personality. Is it messy and overflowing with papers and knickknacks? Or is it perfectly minimal and decorated with plants? This challenge is all about capturing the unique character of work stations. From an improvised home office desk, to an epic gaming battlestation, and even the paint-covered table in an artist's studio — focus on those special touches that make a person's desk stand out. Photograph your own work station or someone else's! Videos are welcome too. The winner will take home a \$200 USD cash prize!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Heading_Title("Inspiration"),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            MyTopic("assets/inspirion.webp"),
                            MyTopic("assets/desk.jpg"),
                          ],
                        )
                      ],
                    )
                  ])),
                ],
              ),
            )
          ],
        ));
  }
}
