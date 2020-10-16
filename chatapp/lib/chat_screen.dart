import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>
{
  final TextEditingController _x=new TextEditingController();
  final List<ChatMessage> _messages=<ChatMessage> [];
  void _handleSubmitted(String text)
  {
    _x.clear();
    ChatMessage messages=new ChatMessage(
      text:text,
    );
    setState(() {
      _messages.insert(0, messages);
      
    });
  }
  Widget _textComposerWidget(){
    return new IconTheme(
      data: new IconThemeData(
        color:Colors.purpleAccent
      ),
          child: new Container(
        margin: const EdgeInsets.symmetric(horizontal:8.0),
       child: new Row(
         children:<Widget>[
           new Flexible(
              child: new TextField(
          decoration: new InputDecoration.collapsed(hintText:
          "send a massage"),
          controller: _x,
          onSubmitted: _handleSubmitted,
        ),
           ),
           new Container(
             margin: const EdgeInsets.symmetric(horizontal:4.0),
             child: new IconButton(
               icon:new Icon(Icons.send),
               onPressed:() => _handleSubmitted(_x.text),
             ),
           ),
         ],
       ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
        return new Column(
            children:<Widget>[
              new Flexible( 
                child: new ListView.builder(
                  padding: new EdgeInsets.all(8.0),
                  reverse: true,
                itemBuilder: (_,int index) => _messages[index],
                itemCount: _messages.length, 
                ),
                ),
               new Divider(height: 1.0,),
               new Container(
              decoration:new BoxDecoration(
                color:Theme.of(context).cardColor,
                 ),
                 child: _textComposerWidget(),
             ),
        ],
      );
  }
}