import 'package:flutter/material.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';

class cate2 extends StatefulWidget {
  @override
  _cate2State createState() => _cate2State();
}

class _cate2State extends State<cate2> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <String> assetNames = [
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
    'assets/evet2.jpg',
  ];
  EdgeInsets _edgeInsetsForIndex(int index){
    if (index % 2 == 0){
      return EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
    } else{
      return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
    }
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
      body: Container(
        child: CustomScrollView(
          slivers: <Widget> [
            //SliverList(delegate: )
            SliverAppBar(
              floating: false,
              expandedHeight: 50,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Les artistes"),
              ),
            ),
            SliverGrid(
                delegate:
                    SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: _edgeInsetsForIndex(index),
                    child: Image.asset(assetNames[index % assetNames.length]),
                  );
                },
                      childCount: 12,
                    ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150.0,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 0.75,
                )),
            SliverAppBar(
              floating: false,
              expandedHeight: 50,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Les artistes"),
              ),
            ),
            SliverGrid(
                delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: _edgeInsetsForIndex(index),
                    child: Image.asset(assetNames[index % assetNames.length]),
                  );
                },
                  childCount: 12,
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150.0,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 0.75,
                )),
          ],
        ),
      ),

      /*Container(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: GridView.count(
                //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1.0,
               // ),
                children: [
                  /*Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'LES ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'ARTISTES ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'MALIEN(NE)S ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),*/
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet2.jpg'),
                        height: 80,
                        width: 10,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                        height: 110,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  /*Container(
                      margin: EdgeInsets.all(50),
                      child: Text(
                        'LES ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.all(50),
                      child: Text(
                        'INFLUENCEURS ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.all(50),
                      child: Text(
                        'MALIEN(NE)S ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),*/
                  /*Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/evet4.jpg'),
                      ),
                      onTap: () {},
                    ),
                  ),*/
                ],
              ),
            ),
      ),*/
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
}
