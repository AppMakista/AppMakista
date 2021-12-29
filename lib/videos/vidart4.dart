import 'package:flutter/material.dart';
import 'package:mamakista/pages/home.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:video_player/video_player.dart';

class vidart4 extends StatefulWidget {
  @override
  _vidart4State createState() => _vidart4State();
}

class _vidart4State extends State<vidart4> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/weei.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    //_initializeVideoPlayerFuture = _controller.initialize();
    //_controller.setLooping(true);
    //_controller.setVolume(1.0);
    //_controller.setPlaybackSpeed(2.0);
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
      body: ListView(
        //padding: const EdgeInsets.only(top: 5.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
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
                        Padding(padding: EdgeInsets.all(3)),
                        FlatButton(
                          child: Text("Telecharger"),
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.transparent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.home,
                color: Colors.deepOrange,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.search,
                color: Colors.deepOrange,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vidart6()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Ink.image(
                image: AssetImage("assets/add.png"),
                height: 30,
                //width: 100,
                //fit: BoxFit.fill,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vidart6()));
              },
            ),
            /*Image.asset(
                  "assets/add.png",
                height: 60,
              ),*/
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.video_call,
                color: Colors.deepOrange,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => cate1()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.person,
                color: Colors.deepOrange,
                size: 30,
              ),
              onTap: () {},
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
