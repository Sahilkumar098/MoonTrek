import 'package:flutter/material.dart';

class Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      constraints: new BoxConstraints.expand(height: 600),
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(left: 16.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(image: new AssetImage('assets/moonimages/moon1.jpg'),
          fit: BoxFit.cover,
          
        ),
      ),
      child: new Text('Title', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,)
      ),

    );
  }
}
class Next extends Facts  {
 // Widget build(BuildContext context) {
//    return Scaffold(
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//    );
 // }
}