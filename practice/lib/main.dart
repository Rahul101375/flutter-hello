import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp( 
    title: "My app",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My First Appbar"),
        backgroundColor: Colors.amber),
         body: Material(
           child:Center(
           child:Text("Hello World",
           textDirection:TextDirection.ltr,
           style:TextStyle(
             fontSize: 40.0,
             color:Colors.amber,
             height:20.0,
             backgroundColor: Colors.amberAccent,
           ),
           ),
           ),
         ),
        ),
  ),
  );
}
