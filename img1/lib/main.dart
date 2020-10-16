import 'package:flutter/material.dart';
import 'package:img1/home_page.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
      home:new HomePage(),
    );
  }
}