import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 7.0,
      color: Colors.purple,
      elevation: 10.0,
      child: Container(
        height:40.0,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Colors.teal,
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Container(
              height:50.0,
              width:MediaQuery.of(context).size.width/2-40.0,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Icon(Icons.account_balance_wallet,
                  color:Colors.yellow),
                ],
              ),
            ),
               Container(
              height:50.0,
              width:MediaQuery.of(context).size.width/2-40.0,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Icon(Icons.account_balance_wallet,
                  color:Colors.yellow),
                ],
              ),
            ),
             Container(
              height:50.0,
              width:MediaQuery.of(context).size.width/2-40.0,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Icon(Icons.add_to_queue,
                  color:Colors.yellow),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}