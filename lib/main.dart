
import 'package:flutter/material.dart';
import 'package:mamakista/pages/home.dart';
import './pages/login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.black,
    ),
    home: HomePage(),
  ));
}
