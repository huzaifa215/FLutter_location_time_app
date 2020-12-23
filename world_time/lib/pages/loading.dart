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
  void getData() async{// keh jb tk ye nhi ho age proceed nhi karen ge
    Response response=await get('https://jsonplaceholder.typicode.com/todos/1');// get teh data from jason jason data
    // response data type get the responese freom that url
    Map data=jsonDecode(response.body); // json decode used to covert string dta into a use full from
    //MAP is equal to HaahMap
    print (data);
    print(data['title']);

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
