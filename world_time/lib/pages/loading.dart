import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:http/http.dart';
//jason decode
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async{ // keh jb tk ye nhi ho age proceed nhi karen ge
    //make the request
    Response response=await get('http://worldtimeapi.org/api/timezone/Asia/Karachi');
    Map data=jsonDecode(response.body);
  //  print(data);
    // get properties from data
    String datetime=data['datetime'];
    String offset=data['utc_offset'].substring(1,3);
   //  print(datetime);
   // print(offset);
    //create an date time obj
    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours:int.parse(offset)));
    print(now);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
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
