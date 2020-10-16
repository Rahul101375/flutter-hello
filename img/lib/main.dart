import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child:new ClipPath(
          child:new Image.network('https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg'),
          clipper: new MyClipper(),
        ),
      ),
    );
  }
}

  class MyClipper extends CustomClipper<Path> {
    @override
    Path getClip(Size size){
      var path =new Path();
      path.lineTo(0.0,size.height-20);
      var fcp =new Offset(size.width / 4, size.height);
      var fep =new Offset(size.width / 2.25, size.height-30);
      path.quadraticBezierTo(fcp.dx, fcp.dy, fep.dx, fep.dy);

      var scp=new Offset(size.width - (size.width / 3.25), size.height - 65);
      var sep=new Offset(size.width, size.height-40);
      path.quadraticBezierTo(scp.dx, scp.dy, sep.dx, sep.dy);

      path.lineTo(size.width, size.height - 40);
      path.lineTo(size.width, 0.0);
      path.close();
      return path;
    }
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  }
