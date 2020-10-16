import 'package:flutter/material.dart';

void main ()=> runApp(Grid());
class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card( 
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.all(Radius.circular(20.0))
              ),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children:<Widget>[
                    Image.network('https://images-na.ssl-images-amazon.com/images/I/61YBr1gsDpL._UL1304_.jpg',
                    height:150,
                    width:200,
                    fit:BoxFit.fitWidth,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top:140,
                          left:90,
                        ),
                        height: 30,
                        width: 90,
                        child: Stack(
                          children:<Widget>[
                            RaisedButton(
                              onPressed:()
                              {
                                debugPrint('Buy Clicked');
                              },
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0),),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration:BoxDecoration(
                                  gradient:LinearGradient(
                                    colors:[Colors.redAccent,Colors.red[200]],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                              ),
                            ),
                            Center(
                              child:Text('Buy Now',
                              style: TextStyle(
                                color:Colors.white
                              ),
                              )
                            )
                          ],
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:120,left:5),
                      child: Text('202Rs',
                      style:TextStyle(fontSize: 22.0,
                      fontWeight:FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ),
                        Card( 
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.all(Radius.circular(20.0))
              ),
              elevation: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children:<Widget>[
                    Image.network('https://images-na.ssl-images-amazon.com/images/I/61YBr1gsDpL._UL1304_.jpg',
                    height:150,
                    width:200,
                   fit:BoxFit.fitWidth,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top:140,
                          left:90,
                        ),
                        height: 30,
                        width: 90,
                        child: Stack(
                          children:<Widget>[
                            RaisedButton(
                              onPressed:()
                              {
                                debugPrint('Buy Clicked');
                              },
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0),),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration:BoxDecoration(
                                  gradient:LinearGradient(
                                    colors:[Colors.redAccent,Colors.red[200]],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                              ),
                            ),
                            Center(
                              child:Text('Buy Now',
                              style: TextStyle(
                                color:Colors.white
                              ),
                              )
                            )
                          ],
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:120,left:5),
                      child: Text('202Rs',
                      style:TextStyle(fontSize: 22.0,
                      fontWeight:FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            )    
           ],
        ),
      ),
    );
  }
}