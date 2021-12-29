import 'package:flutter/material.dart';
import 'package:mamakista/pages/page7.dart';
import 'package:mamakista/videos/vidart1.dart';
import 'package:mamakista/videos/vidart2.dart';
import 'package:mamakista/videos/vidart3.dart';
import 'package:mamakista/videos/vidart4.dart';
import 'package:mamakista/videos/vidart5.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:mamakista/videos/vidart7.dart';
import 'package:mamakista/videos/vidart8.dart';
import 'package:mamakista/videos/vidart9.dart';
//import 'package:mamakista/videos/vidart7.dart';
import 'package:video_player/video_player.dart';

class Detail_videos extends StatefulWidget {
  @override
  createState() => _Detail_videosState();
}

class _Detail_videosState extends State<Detail_videos> {
  late VideoPlayerController _controller;
  //late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/ableyediabate.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    //_controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
    _controller.play();
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
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart1()));
                    },
                    //borderRadius: BorderRadius.circular(10),
                    //clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/salif.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    /*child: Ink.image(
                      image: AssetImage("assets/salif.jpg"),
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,

                    ),*/
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                  InkWell(
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/sidiki.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart2()));
                    },
                  ),
                /*  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                  InkWell(
                    child: Ink.image(
                      image: AssetImage("assets/vidi.png"),
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart7()));
                    },
                  ),*/
                ],
              ),
              Container(
                height: 3,
                width: 2,
                color: Colors.white,
              ),

              Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/iba.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart3()));
                    },
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),


                  InkWell(
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/weei.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart4()));
                    }
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                /*  InkWell(
                    child: Ink.image(
                      image: AssetImage("assets/oumousangare.jpg"),
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart8()));
                    },
                  ),*/
                ],
              ),
             /* Container(
                height: 3,
                width: 2,
                color: Colors.white,
              ),
              Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: Ink.image(
                      image: AssetImage("assets/ayaN.jpg"),
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart5()));
                    },
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                  InkWell(
                    child: Ink.image(
                      image: AssetImage("assets/wozo.jpg"),
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart6()));
                    },
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                  InkWell(
                    child: Ink.image(
                      image: AssetImage("assets/drkeb.jpg"),
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vidart9()));
                    },
                  ),
                ],
              ),
              Container(
                height: 3,
                width: 2,
                color: Colors.white,
              ),*/
              Container(
                width: 200,
                height: 200,
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
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Le pourqoui du dedicace",
                                labelText: "Description",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder()),
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            maxLines: 1,
                          ),
                        ),

                        // BOUTON PAUSE ET PLAY
                        /*Padding(
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
                        ),*/
                      ],
                    ),
                  ),
                ),
              ),
              /*Column(
                  children: [
                    InkWell(
                      child:Ink.image(
                        image: AssetImage("assets/ableyediabate.jpg"),
                        height: 200,
                        width: 170,
                        fit: BoxFit.fill,
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => vidart7()));
                      },
                    ),
                  ],
                ),*/
              //),
            ],
          ),
        ),
      ),
    );
  }
}
