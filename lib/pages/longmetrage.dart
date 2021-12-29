import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamakista/login/connexion.dart';
import 'package:mamakista/login/inscription.dart';
import 'package:mamakista/videos/vidart1.dart';
import 'package:video_player/video_player.dart';

class Longmetrage extends StatefulWidget {

  @override
  _LongmetrageState createState() => _LongmetrageState();
}

class _LongmetrageState extends State<Longmetrage> {
  late VideoPlayerController _controller;
  late VideoPlayerController _controller1;

  //late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/ableyediabate.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller1 = VideoPlayerController.asset("assets/videos/dmamou.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    //_controller.setLooping(true);
    //_controller.setVolume(1.0);
    super.initState();
    //_controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.only(top: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : Container(),
                      VideoProgressIndicator(
                        _controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                            backgroundColor: Colors.red,
                            bufferedColor: Colors.black,
                            playedColor: Colors.blueAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  _controller.pause();
                                },
                                child: Icon(Icons.pause)),
                            //child: Icon(_controller.value.isPlaying ?Icons.pause : Icons.play_arrow  ),
                            Padding(padding: EdgeInsets.all(3)),
                            ElevatedButton(
                                onPressed: () {
                                  _controller.play();
                                },
                                child: Icon(Icons.play_arrow)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice1()));
                  },
                  //borderRadius: BorderRadius.circular(10),
                  //clipBehavior: Clip.antiAliasWithSaveLayer,
                  child : Ink.image(
                    image: AssetImage("assets/clip.png"),
                    height: 70,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 5,
                  width: 10,
                  color: Colors.black,
                ),
                InkWell(
                  child : Ink.image(
                    image: AssetImage("assets/concert.jpg"),
                    height: 70,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice4()));
                  },
                ),
              ],
            ),*/
            Container(
              height: 5,
              width: 5,
              color: Colors.white,
            ),
            Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.only(top: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _controller1.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller1.value.aspectRatio,
                        child: VideoPlayer(_controller1),
                      )
                          : Container(),
                      VideoProgressIndicator(
                        _controller1,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                            backgroundColor: Colors.red,
                            bufferedColor: Colors.black,
                            playedColor: Colors.blueAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  _controller1.pause();
                                },
                                child: Icon(Icons.pause)),
                            //child: Icon(_controller.value.isPlaying ?Icons.pause : Icons.play_arrow  ),
                            Padding(padding: EdgeInsets.all(3)),
                            ElevatedButton(
                                onPressed: () {
                                  _controller1.play();
                                },
                                child: Icon(Icons.play_arrow)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child :Ink.image(
                    image: AssetImage("assets/video.png"),
                    height: 70,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice2()));
                  },
                ),
                Container(
                  height: 5,
                  width: 10,
                  color: Colors.white,
                ),
                InkWell(
                  child:Ink.image(
                    image: AssetImage("assets/films.png"),
                    height: 70,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice5()));
                  },
                ),
              ],
            ),*/

             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      width: 150,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => inscription()));
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceOut,
                              height: 50,
                              width: 150,
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
                                    'Créer un compte',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                                  ))),
                        ),
                      ])),
                  Container(
                    height: 5,
                    width: 5,
                    //color: Colors.white,
                  ),
                  Container(
                      height: 50,
                      width: 150,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => connexion()));
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceOut,
                              height: 50,
                              width: 150,
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
                                    'Se connecter',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 16),
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
            //),
          ],
        ),
      ),

    );

  }
}

