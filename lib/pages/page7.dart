import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/pages/home.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';

class page7 extends StatefulWidget {
  const page7({Key? key}) : super(key: key);

  @override
  _page7State createState() => _page7State();
}

class _page7State extends State<page7> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Bonjour",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Text('Deconnection'),
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                      minWidth: 250.0,
                      height: 5.0,
                      child: RaisedButton(
                        onPressed: () {
                          //PAGE4
                        },
                        child: Text('Demande de vidéo dédicace'),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        //PAGE11
                      },
                      child: Text('Galerie DEDICACE'),
                      textColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                      minWidth: 250.0,
                      height: 5.0,
                      child: RaisedButton(
                        onPressed: () {
                          //PAGE4
                        },
                        child: Text('Regarder le Concert en direct'),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        //PAGE11
                      },
                      child: Text('Galerie CONCERT'),
                      textColor: Colors.white,
                      padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                      minWidth: 250.0,
                      height: 5.0,
                      child: RaisedButton(
                        onPressed: () {
                          //PAGE9
                        },
                        child: Text('Comédie'),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Spacer(),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                      minWidth: 250.0,
                      height: 5.0,
                      child: RaisedButton(
                        onPressed: () {
                          //PAGE10
                        },
                        child: Text('Films'),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.blue,
                      ),
                    ),
                  ),

                ],
              ),
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  Partenaire(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Mary va à l'ecole en retard, il passe deux jours sur un seul icon"),

                  )
                ],
              ),
            ),
          ],
        ),
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
