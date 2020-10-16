import 'dart:math';
import 'package:flutter/material.dart';
import 'package:img1/game_button.dart';
import 'package:img1/custom_dalong.dart';
//import 'dart:js';


 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }
 
  class _HomePageState extends State<HomePage> {
   List<GameButton> buttonsList;
   var x;
   var y;
   var xa;
  @override
   void initState(){
     super.initState();
     buttonsList=doInit();
   }

   List<GameButton> doInit(){
     x = new List();
     y = new List();
     xa =1;
     var gameButtons =<GameButton>[
       new GameButton(id:1),
       new GameButton(id:2),
       new GameButton(id:3),
       new GameButton(id:4),
       new GameButton(id:5),
       new GameButton(id:6),
       new GameButton(id:7),
       new GameButton(id:8),
       new GameButton(id:9),
     ];
     return gameButtons;
   }

   void playGame(GameButton gb){
     setState((){
       if(xa==1){
         gb.text="X";
         gb.bg=Colors.red;
         xa=2;
         x.add(gb.id);
       }else
       {
         gb.text="0";
         gb.bg=Colors.yellowAccent;
         xa=1;
         y.add(gb.id);
       }
       gb.enabled=false;
       int winner=checkWinner();
       if(winner == -1)
       {
         if(buttonsList.every((p) => p.text != "")) {
              showDialog(
              context: context,
              builder:(_) => new CustomDialog("Game Tied", "Press the reset button to start again", resetGame)
              );
         }
         else{
           xa==2?autoPlay():null;
         }
       }
     });
   }

   void autoPlay(){
     var emptyCells =new List();
     var list =new List.generate(9, (i) => i+1);
     for(var cellID in list){
       if(!(x.contains(cellID) || y.contains(cellID))){
         emptyCells.add(cellID);
       }
     }
     var r=new Random();
     var randIndex=r.nextInt(emptyCells.length-1);
     var cellID=emptyCells[randIndex];
     int i=buttonsList.indexWhere((p) => p.id ==cellID);
     playGame(buttonsList[i]);
   }

     int checkWinner(){
       var winner=-1;
       if(x.contains(1) && x.contains(2) && x.contains(3)){
         winner=1;
       }
       if(y.contains(1) && y.contains(2) && y.contains(3)){
         winner=2;
     }
     if(x.contains(4) && x.contains(5) && x.contains(6)){
         winner=1;
       }
       if(y.contains(4) && y.contains(5) && y.contains(6)){
         winner=2;
       }
       if(x.contains(7) && x.contains(8) && x.contains(9)){
         winner=1;
       }
       if(y.contains(7) && y.contains(8) && y.contains(9)){
         winner=2;
       }
       if(x.contains(1) && x.contains(5) && x.contains(9)){
         winner=2;
       }
       if(y.contains(1) && y.contains(5) && y.contains(9)){
         winner=2;
       }
       if(x.contains(3) && x.contains(5) && x.contains(7)){
         winner=1;
       }
       if(y.contains(3) && y.contains(5) && y.contains(7)){
         winner=1;
       }
       if(winner != -1){
         if(winner == 1){
           showDialog(context: context,
              builder: (_) => new CustomDialog("Player 1 won", "Press the button to start again", resetGame)
           );
         }else{
           showDialog(context: context,
              builder: (_) => new CustomDialog("Player 2 won", "Press the button to start again", resetGame)
           );
         }
       }
       return winner;
     }

       void resetGame(){
         if(Navigator.canPop(context)) Navigator.pop(context);
         setState(() {
           buttonsList = doInit();
         });
   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: new AppBar(
         title:new Text("Tic Tac Toe"),
       ),
       body: new Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           new Expanded(
             child:new GridView.builder(
         padding: const EdgeInsets.all(10.0),
         gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
         childAspectRatio:1.0,
         crossAxisSpacing:9.0,
         mainAxisSpacing:9.0
         ),
         itemCount: buttonsList.length,
         itemBuilder: (context, i) => new SizedBox(
           width:100.0,
           height:100.0,
           child:new RaisedButton(
             padding: const EdgeInsets.all(8.0),
             onPressed:buttonsList[i].enabled ? () => playGame(buttonsList[i]):null,
             child:new Text(
               buttonsList[i].text,
               style: new TextStyle(color:Colors.white,
               fontSize:20.0
               ),
             ),
             color: buttonsList[i].bg,
             disabledColor: buttonsList[i].bg,
           ),
         ),
       ),
           ),
           new RaisedButton(
             child: new Text(
               "Reset",
               style:new TextStyle(color: Colors.white, fontSize: 20.0),
             ),
             color: Colors.red,
             padding: const EdgeInsets.all(20.0),
             onPressed: resetGame,
           ),
         ],
       )   
     );
   }
   }