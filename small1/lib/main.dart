import 'package:flutter/material.dart';

void main ()=>runApp(List());
class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello",
      home: Scaffold(
        body:ListView(
          children:<Widget>[
            ListTile(
              leading:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.green,
                ),
                child: Icon(Icons.network_wifi,),
              ),
              title: Text('Network & setting'),
              subtitle: Text('wi-fi,mobile data,internet'),
             // trailing: Icon(Icons.add),
              onTap: () {debugPrint('Network and Setting');},
            ),
             ListTile(
              leading:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.lightBlue,
                ),
                child: Icon(Icons.bluetooth,),
              ),
              title: Text('Conneced Devices'),
              subtitle: Text('Bluetooth'),
             // trailing: Icon(Icons.add),
              onTap: () {debugPrint('Conneced Device');},
            ),
            ListTile(
              leading:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.black,
                ),
                child: Icon(Icons.settings,),
              ),
              title: Text('Setting'),
              subtitle: Text('Setting'),
             // trailing: Icon(Icons.add),
              onTap: () {debugPrint('Fuck off Setting');},
            ),
          ],
        ),
      ),  
    );
  }
}