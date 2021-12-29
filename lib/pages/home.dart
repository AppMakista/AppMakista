import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/componets/videos.dart';
import 'package:mamakista/pages/login.dart';
import 'package:mamakista/pages/longmetrage.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:marquee/marquee.dart';

import 'detail_video.dart';

//my own imports

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //CREATION DE WIDGET SLIDER
    Widget imageslider = Container(
      color: Colors.white,
     padding: const EdgeInsets.only(top: 20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*Padding(
            padding: EdgeInsets.all(20),

          ),*/

          CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //CarouselWithDotsPage(imgList: imgList),
        ],
      ),
    );

    //CREATION D'UN WIDGET TEXTSLIDER
    /*Widget textslider  = Container(
      alignment: Alignment.center,
      child: buildAnimatedText("Makista, l'application qui fait vibrer votre coeur"),
    );*/

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        //backgroundColor: Colors.transparent,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
        /*Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children :[
                    Text('MAKISTA',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
            ],
                ),
                Column(
                  children :[
                    InkWell(
                      child : Ink.image(
                        image: AssetImage("assets/logo.png"),
                        height: 80,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => artice4()));
                      },
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),*/

        /*actions: <Widget>[
           Container(
              child:
              Image.asset("assets/logo.jpg",
              ),
            ),

        ],*/

        /*Text('MAKISTA'),
        /*actions: <Widget>[
        radius: 20,
              backgroundImage: AssetImage(
                'assets/logo.jpg',
              ),
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})*/
          leading: Container(
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/logo.jpg',
              ),
            ),
          ),*/
      ),
      body: ListView(
        children: <Widget>[
          imageslider,

          /*Container(
            alignment: Alignment.center,
            child: buildAnimatedText("Makista, l'application qui fait vibrer votre coeur"),
          ),*/

          //textslider,

          Partenaire(),

          /*new Padding(padding: const EdgeInsets.all(2.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('')),),*/
          /*Container(
            alignment: Alignment.center,
              child: buildAnimatedText("Makista l'application qui fait vibrer votre coeur "),
          ),*/

          //padding widget
          /*new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Partenaires')),),

          //Horizontal list view begins here
          Partenaire(),*/

          //padding widget
          /*new Padding(padding: const EdgeInsets.all(40.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('PUB & Videos Recents')),),*/
          Detail_videos(),
          /*new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Creer un compte')),),*/

          //grid view

          //grid view
          Videos(),

          /*new Padding(padding: const EdgeInsets.all(40.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories')),),*/
          new Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                alignment: Alignment.centerLeft, child: new Text(' ')),
          ),
          Longmetrage(),

          //grid view

          //grid view
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
              onTap: () {},
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
  /*Widget buildAnimatedText(String text) => Marquee(
    text: text,
    style: TextStyle(fontSize: 10, color: Colors.black),
    blankSpace: 90,
  );*/
}

final List<String> imgList = [
  'assets/evett1.jpg',
  'assets/evet10.jpg',
  'assets/evett3.jpg',
  'assets/evett6.jpg',
  ];
