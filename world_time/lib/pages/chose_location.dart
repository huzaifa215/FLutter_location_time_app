import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Chose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Enter the location'),
    );
  }
}
