import 'package:flutter/material.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/cate2.dart';
import 'package:mamakista/videos/cate3.dart';
import 'package:mamakista/videos/cate4.dart';
import 'package:mamakista/videos/vidart1.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 20.0),
                            color: Colors.blueAccent,
                            blurRadius: 30.0,
                          ),
                        ]),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cate1()));
                        },
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut,
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    colors: [
                                      //const Color(0xFF4CAF50),
                                      const Color(0xffFF7F00),
                                      const Color(0xff6A9BF8)
                                    ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(120),
                                  bottomLeft: Radius.circular(120),
                                  topRight: Radius.circular(120),
                                  bottomRight: Radius.circular(120),
                                )),
                            child: Center(
                                child: Text(
                              'Concert Live',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ))),
                      ),
                      /*Positioned(
                        top: 5,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),*/
                    ])),
                Container(
                  height: 5,
                  width: 10,
                  //color: Colors.white,
                ),
                Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 20.0),
                            color: Colors.blueAccent,
                            blurRadius: 30.0,
                          ),
                        ]),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cate3()));
                        },
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut,
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    colors: [
                                      const Color(0xffFF7F00),
                                      const Color(0xff6A9BF8)
                                    ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(120),
                                  bottomLeft: Radius.circular(120),
                                  topRight: Radius.circular(120),
                                  bottomRight: Radius.circular(120),
                                )),
                            child: Center(
                                child: Text(
                              'Orga Event',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ))),
                      ),
                      /*Positioned(
                        top: 5,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),*/
                    ])),
              ],
            ),
            Container(
              height: 5,
              width: 5,
              //color: Colors.white,
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 20.0),
                            color: Colors.blueAccent,
                            blurRadius: 30.0,
                          ),
                        ]),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cate2()));
                        },
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut,
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    colors: [
                                      const Color(0xFFFF7F00),
                                      const Color(0xFF6A9BF8)
                                    ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(120),
                                  bottomLeft: Radius.circular(120),
                                  topRight: Radius.circular(120),
                                  bottomRight: Radius.circular(120),
                                )),
                            child: Center(
                                child: Text(
                              'Dedicace',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ))),
                      ),
                      /*Positioned(
                        top: 5,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),*/
                    ])),
                Container(
                  height: 5,
                  width: 10,
                  //color: Colors.white,
                ),
                Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 20.0),
                            color: Colors.blueAccent,
                            blurRadius: 30.0,
                          ),
                        ]),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cate4()));
                        },
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut,
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    colors: [
                                      const Color(0xffFF7F00),
                                      const Color(0xff6A9BF8)
                                    ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(120),
                                  bottomLeft: Radius.circular(120),
                                  topRight: Radius.circular(120),
                                  bottomRight: Radius.circular(120),
                                )),
                            child: Center(
                                child: Text(
                              'Invitation artiste',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ))),
                      ),
                      /*Positioned(
                        top: 5,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),*/
                    ])),
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Ink.image(
                    image: AssetImage("assets/mdt.jpeg"),
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => pubvideo()));
                  },
                ),
              ],
            ),
            //),
          ],
        ),
      ),
    );
  }
}
