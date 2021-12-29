import 'package:flutter/material.dart';

class Formulaire extends StatelessWidget {
  String firstname = '';
  String lastname = '';
 // String Pseudo = '';
 // String email = '';
  String telephone = '';
 // String password = '';
  //String confpassword = '';

  final _KeyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
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
              

              ],
            ),
          ),
        ),
      ),
    );
  }
}
