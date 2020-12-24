import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import'package:http/http.dart';
//jason decode
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime worldTime= WorldTime(location: 'Berlin',flag: 'germany.png',url: 'Europe/Berlin');
    await worldTime.getTime();
    print(worldTime.time);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Loading'),
      ),
    );
  }
}
