import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/login/forgot_password_screen.dart';
import 'package:mamakista/pages/home.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';

class connexion extends StatefulWidget {
  @override
  _connexionState createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  String firstname = '';
  String lastname = '';
  // String Pseudo = '';
  // String email = '';
  String telephone = '';
  // String password = '';
  //String confpassword = '';
  bool remember = false;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: SingleChildScrollView(
        child: Container(
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
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          remember = value!;
                        });
                      },
                    ),
                    Text("Souviens-toi de moi" /*"Remember me"*/),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Valider'),
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, ForgotPasswordScreen.routeName),
                          child: Text(
                            "mot de passe oublié" /*"Forgot Password"*/,
                            style: TextStyle(decoration: TextDecoration.underline,fontSize: 15),
                          ),
                        ),
                      ],
                    ),
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
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
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
                          ),
                          InkWell(
                            onTap: () {},
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
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
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
                          ),
                          InkWell(
                            onTap: () {},
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
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
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
                          ),
                          InkWell(
                            onTap: () {},
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
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
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
                          ),
                          InkWell(
                            onTap: () {},
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
