 import 'package:flutter/material.dart';
 import './screen/popup.dart';

 void main() =>runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.grey.shade400,
       title:Text('List'),
       actions: <Widget>[
         IconButton(icon: Icon(Icons.search), onPressed: ()=>debugPrint("item Searched"),),
         IconButton(icon: Icon(Icons.add_box), onPressed: ()=>debugPrint("item add"),),
         IconButton(icon: Icon(Icons.add_call), onPressed: ()=>debugPrint("item call "),),
       ],
     ),
     drawer: Drawer(
       child:ListView(
         children:<Widget>[
           DrawerHeader(
             child:Text('LIST SETTING'),
             decoration:BoxDecoration(
               color:Colors.blue,
             ),
           ),
           ListTile(
             title: Text('Active Member'),
             onTap: ()=>debugPrint("Active Member Selected"),
            ),
           ListTile(
              title: Text('Lazy Member'),
              onTap: ()=>debugPrint("Lazy Member Selected"),
           )
         ],
       ),
     ),
     backgroundColor: Colors.lightBlue,
   /*  bottomNavigationBar: BottomNavigationBar(
       items:[
         BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),
         title:Text('Wallet') 
         ),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),
         title:Text('Cart') 
         ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
         title:Text('Profile') 
         ),
       ], 
       ),*/
       body: Container(
         alignment:Alignment.center,
         child:Column(
           mainAxisAlignment:MainAxisAlignment.center,
           children:<Widget>[
             Text('Hey Developer',
             style:TextStyle(fontSize: 19.0,
             fontWeight:FontWeight.bold,
             color:Colors.blue,)
             ),
             InkWell(
               child: Text('Proceed Payment'),
               onTap: ()=>debugPrint("Proceed"),
             ),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: ()=>debugPrint('Tappped'),
         backgroundColor: Colors.limeAccent.shade400,
         child: Icon(Icons.add_shopping_cart),
         tooltip: 'Cart',),
         bottomNavigationBar:Bottombar(),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     )
 )
 ); 