import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:mamakista/videos/vidart9.dart';

class cate4 extends StatefulWidget {
  @override
  _cate4State createState() => _cate4State();
}

class TimeValue{
  late final int _key;
  late final String value;
  TimeValue(this._key, this.value);
}


class _cate4State extends State<cate4> {
  final _KeyForm = GlobalKey<FormState>();
  String nom = '';
  String prenom = '';
  String numero = '';
  String description = '';
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
      body: ListView(
        children: [
          /*SizedBox(
            height: 10,
          ),*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
          ),
          Container(
           // padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          padding: EdgeInsets.all(8.0),
            child: Form(
              key: _KeyForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nom', border: OutlineInputBorder()),
                    validator: (val) =>
                        val!.isEmpty ? 'Veuillez entrer votre nom ' : null,
                    onChanged: (Val) => nom = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Prénom',
                        border: OutlineInputBorder()),
                    validator: (val) => val!.isEmpty
                        ? 'Veuillez entrer votre prenom'
                        : null,
                    onChanged: (Val) => prenom = Val,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Numero', border: OutlineInputBorder()),
                    validator: (val) =>
                    val!.isEmpty ? 'Veuillez entrer votre numero' : null,
                    onChanged: (Val) => numero = Val,
                  ),
                  SizedBox(height: 10.0),
                   Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Le pourqoui du dedicace",
                            labelText: "Description",
                            labelStyle: TextStyle(
                              //color: Colors.black,
                            ),
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        maxLines: 4,
                      ),
                    ),
                  /*TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Description', border: OutlineInputBorder(), hintMaxLines: 3, ),
                    validator: (val) =>
                    val!.isEmpty ? 'Votre description' : null,
                    onChanged: (Val) => description = Val,
                  ),*/
                ],
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Nom",
                    labelText: "Nom",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
                obscureText: false,
                maxLines: 1,
                /*padding: EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),*/
              ),
            ),
          ),*/
          /*SizedBox(
            height: 10,
          ),*/
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Prénom",
                    labelText: "Prénom",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
                obscureText: false,
                maxLines: 1,
              ),
            ),
          ),*/
          /*SizedBox(
            height: 10,
          ),*/
         /* Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Numéro",
                    labelText: "Numéro",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
                obscureText: false,
                maxLines: 1,
              ),
            ),
          ),
          /*SizedBox(
            height: 10,
          ),*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
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
                maxLines: 5,
              ),
            ),
          ),*/
          /*SizedBox(
            height: 16,
          ),*/
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text("1 Mn",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("Prix :..... FCFA",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ]),
                SizedBox(
                  height: 16,
                  width: 100,
                ),
                Column(children: [
                  Text("3 Mn",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("Prix :..... FCFA",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ]),
                SizedBox(
                  height: 16,
                  width: 100,
                ),
                Column(children: [
                  Text(
                    "5 Mn",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text("Prix :..... FCFA",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 16,
            width: 100,
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PAIMENT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepOrange),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   Icon:Icon(Icons.add_shopping_cart_outlined)
                      children: [
                        InkWell(
                          child: Ink.image(
                            image: AssetImage("assets/omoney.jpg"),
                            height: 80,
                            width: 140,
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => vidart9()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 4,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          child: Ink.image(
                            image: AssetImage("assets/visa.png"),
                            height: 80,
                            width: 100,
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => vidart9()));
                          },
                        ),
                      ],
                      //   Icon:Icon(Icons.add_shopping_cart_outlined)
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Soumettre'),
                    textColor: Colors.white,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    color: Colors.black,
                  )
                ],
              )
            ],
          )
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
}
