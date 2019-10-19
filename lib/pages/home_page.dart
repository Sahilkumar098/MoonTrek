import 'package:flutter/material.dart';
import 'package:flutter_app/fragements/facts.dart';
import 'package:flutter_app/fragements/first_fragment.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title,this.icon);
}

class HomePage extends StatefulWidget{

  final drawerItem = [
    new DrawerItem("Introduction to Moon",Icons.account_circle),
    new DrawerItem("Astronauts", Icons.accessibility),
    new DrawerItem("Facts", Icons.adb),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  int _selectedDrawerIndex = 2;

  _getDrawerPos(int pos) {
    switch(pos) {
      //case 0: return new FirstFragment();
      case 2: return new Next();

      default: return new Text("Error");
    }
  }

  _onSelected(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var draweOptions = <Widget>[];
    for(var i=0; i<widget.drawerItem.length; ++i) {
      var d = widget.drawerItem[i];
      draweOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelected(i),
          )
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItem[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text('John Doe'), accountEmail: null),
            new Column(children: draweOptions,)
          ],
        ),
      ),
      body : _getDrawerPos(_selectedDrawerIndex),
    );
  }

}