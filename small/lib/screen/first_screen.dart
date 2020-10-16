import 'dart:ui';

import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( 
    child:Container(
      margin: EdgeInsets.only(top:120, bottom:120, left:80, right: 80),
      padding: EdgeInsets.only(top:40.0,left:20.0),
      alignment: Alignment.center,
      color: Colors.teal,
      child: Column(
        children: <Widget>[
          Expanded(
            child:Text("User Id",
                   textDirection:TextDirection.ltr,
                   style: TextStyle(
                   decoration:TextDecoration.none,
                   fontSize:40.0,
                   fontFamily:'Great_Vibes',
                   ),
                  ),
          ),
                 Expanded(
                   child:Text("Password",
                    textDirection:TextDirection.ltr,
                    style: TextStyle(
               decoration:TextDecoration.none,
               fontSize:40.0,
               fontFamily:'Great_Vibes',
                 ),
                  ),
                   ), 
                  // Images(),
                   Login()
        ],
      ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 200.0,
      child:RaisedButton(
              color:Colors.red,
              child:Text('Login' ,
              style: TextStyle(
                color:Colors.cyan,
              ),
              ),
              elevation: 9.0,
              onPressed:() {
            //  Login_Page(context);
              },
      )
          );
        }
      }
/*
      void Login_Page(BuildContext context)
      {
        var popup=AlertDialog(
          title: Text('Login Successfully'),
          content: Text('Enjoy your page'),
        );
        showDialog(
          context: context,
          builder: (BuildContext)=>popup);
      }*/
      


/*
class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    AssetImage assetImage=AssetImage("assets/r.jpg");
    Image image=Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}*/



