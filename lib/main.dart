//import 'package:flutter/material.dart';
//
//
//void main() => runApp(App());
//
//class App extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//
//    return null;
//  }
//
//}
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavigationDrawer',
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new HomePage(),
    );
  }

}