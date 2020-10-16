import 'package:flutter/material.dart';

void main () => new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(primarySwatch: Colors.brown),
  home: new MyHomePage(),
);

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  double age =0.0;
  var selectedYear;
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(vsync: this, 
    duration: new Duration(milliseconds:1500)
    );
    animation = animationController;
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

 void _showPicker(){
   showDatePicker(
     context: context, 
     initialDate: new DateTime(2020), 
     firstDate: new DateTime(1990), 
     lastDate: DateTime.now()
   ).then((DateTime dt) {
     setState(() {
       selectedYear = dt.year;
       calculatorAge();
     });
   });
 }

 void calculatorAge(){
    setState(() {
      age=(2020 - selectedYear).toDouble();
      animation = new Tween<double>(
        begin: animation.value,
        end: age).animate(
          new CurvedAnimation(
            curve:Curves.fastOutSlowIn,
            parent:animationController
          )
        );
      animation.addListener(()
        {
          setState(() {
            
          });
        }
      );
    });
    animationController.forward();
 }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Age Calculator"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new OutlineButton(
            child: new Text(selectedYear != null ? selectedYear.toString(): "Select your year of birth"),
            borderSide: new BorderSide(color: Colors.black, width: 3.0),
            color:Colors.black,
            onPressed: () => _showPicker,
            ),
            new Padding(padding: const EdgeInsets.all(20.0),
            ),
            new Text(
              "Your Age is ${animation.value.toStringAsFixed(0)}",
              style: new TextStyle(
                fontSize:20.0,
                fontWeight:FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
        ],
      ),
    );
  }
} 