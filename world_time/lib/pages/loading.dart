import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import'package:http/http.dart';
//jason decode
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  //String time='Loading';
  void setupWorldTime() async{
    WorldTime worldTime= WorldTime(location: 'Lahore',flag:'pakistan.png',url: 'Asia/Karachi');//Europe/Berlin');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {// argumants act as a map send map with keys and value to the next screen or route
        'location':worldTime.location,
      'flag': worldTime.flag,
      'time':worldTime.time,
      'isDayTime':worldTime.daytime
    });
    // print(worldTime.time);
    // setState(() {
    //   time=worldTime.time;
    // });
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
      backgroundColor: Colors.black12,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 80.0,
        ),
      ),
      // appBar:AppBar(
      //   title: Text('Loading'),
      // ),
      // body: Padding(
      //   padding: EdgeInsets.all(50.0),
      //   child: Text("Loading"),
      // ),
    );
  }
}
