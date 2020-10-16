import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:validators/validators.dart' as validator;
import './model.dart';
import './submit.dart';

void main()=> runApp(Registation());
class Registation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Reg(),
    );
  }
}

class Reg extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
    return _Regstate();
  }
}

class _Regstate extends State<Reg> {
  final _regkey=GlobalKey<FormState>();
  Model model=Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Registation form"),
      ),
      body: Form(
        key:_regkey,
        child:Column(
          children:<Widget>[
            Image.network('https://socialimages.sakalmediagroup.com/sakaltimes-prod/s3fs-public/news-story/cover-images/4Pune_JEE_Main_results_decla.jpg',
            width:640,
            height:150 ,
            fit:BoxFit.fitWidth
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Regtext(
                hintText: "First Name",
                validator: (String value)
                {
                   if(value.isEmpty)
                   {
                     return "Enter your name";
                   }
                   return null;
                },
                onSaved:(String value)
                {
                  model.firstName=value;
                },
              )
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: (){
                if(_regkey.currentState.validate())
                {
                  _regkey.currentState.save();

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Result(model: this.model)
                  )
                  );
                }
              },
                child: Text('Submit form',
                style: TextStyle(color:Colors.white),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class Regtext extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  //final Function model;

  Regtext({
    this.hintText,
    this.validator,
    this.onSaved,
   // this.model1,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all((8.0)),
      child: TextFormField(
        decoration:InputDecoration(
          hintText:hintText,
          contentPadding:EdgeInsets.all(15.0),
          border:InputBorder.none,
          filled:true,
          fillColor:Colors.grey[200],
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}