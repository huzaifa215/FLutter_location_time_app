import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Home Screen'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
            onPressed:(){
              //navigator that push data from 1 to other route
              Navigator.pushNamed(context, '/location');
            },
            icon:Icon(Icons.edit_location),
              label: Text('Edit Location'),
      )
      ],
        ),
      ),
    );
  }
}
