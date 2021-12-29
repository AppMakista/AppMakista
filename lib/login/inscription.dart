import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/login/forgot_password_screen.dart';
import 'package:mamakista/pages/home.dart';
import 'package:mamakista/pages/page7.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:video_player/video_player.dart';

class inscription extends StatefulWidget {
  @override
  _inscriptionState createState() => _inscriptionState();
}

class _inscriptionState extends State<inscription> {
  late VideoPlayerController _controller;
  //late Future<void> _initializeVideoPlayerFuture;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/ske.mp4")
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

  String firstname = '';
  String lastname = '';
  // String Pseudo = '';
  // String email = '';
  String telephone = '';
  String datedenaissance = '';
  String ville = '';
  bool remember = false;

  final _KeyForm = GlobalKey<FormState>();

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
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Form(
              key: _KeyForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Prenom', border: OutlineInputBorder()),
                    validator: (val) =>
                        val!.isEmpty ? 'Veuillez entrer votre prenom ' : null,
                    onChanged: (Val) => firstname = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nom', border: OutlineInputBorder()),
                    validator: (val) =>
                        val!.isEmpty ? 'Veuillez entrer votre nom' : null,
                    onChanged: (Val) => lastname = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Telephone', border: OutlineInputBorder()),
                    validator: (val) =>
                        val!.isEmpty ? 'Veuillez entrer votre numero' : null,
                    onChanged: (Val) => telephone = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Date de naissance',
                        border: OutlineInputBorder()),
                    validator: (val) => val!.isEmpty
                        ? 'Veuillez entrer votre date de naissance'
                        : null,
                    onChanged: (Val) => datedenaissance = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Ville', border: OutlineInputBorder()),
                    validator: (val) =>
                        val!.isEmpty ? 'Veuillez entrer votre ville' : null,
                    onChanged: (Val) => datedenaissance = Val,
                  ),
                  Row(
                    children: [
                      Text(""),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => page7()));
                          },
                          child: Text('Valider'),
                          textColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.red,
                              child: Image(
                                image: AssetImage("assets/ske.jpg"),
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.deepOrange,
                              child: Image(
                                image: AssetImage("assets/dmamou.jpg"),
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.blue,
                              child: Image(
                                image: AssetImage("assets/sidiki.jpg"),
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.amber,
                              child: Image(
                                image: AssetImage("assets/drkeb.jpg"),
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              //color: Colors.black,
                              child: Image(
                                image: AssetImage("assets/iba.jpg"),
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Partenaire(),
                  ),
                  Column(
                    children: [
                      Container(
                        /*width: 400,
                        height: 400,*/
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _controller.value.isInitialized
                                    ? AspectRatio(
                                        aspectRatio:
                                            _controller.value.aspectRatio,
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
                    ],
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
