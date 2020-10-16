import 'package:flutter/material.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jee",
      home: Book(),
    );
  }
}

class Book extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
    return Bookstate();
  }
}

class Bookstate extends State<Book> {
  String namebook="";
  var x=['Chetan Bhagat','Dr','Weck'];
  var _y='Chetan Bhagat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Statefull"),
      ),
        body:Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children:<Widget>[
              TextField(
                onChanged:(String userInput)
                {
                  setState(() {
                    namebook=userInput;
                  });
                }
              ),
              DropdownButton<String>(
                items: x.map((String dropDownStringItem)
                {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child:Text(dropDownStringItem),
                  );
                }
              ).toList(),
              onChanged:(String newValueSelcted)
              {
                setState(
                  (){
                    this._y=newValueSelcted;
                  }
                );
              },
              value:_y,
          ),
          Text("Enter book name is $namebook",
          style: TextStyle(
            fontSize:20.0
          ),
          ),
          ],
          ),
        ),
    );
  }
}