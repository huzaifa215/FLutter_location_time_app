import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
class WorldTime{
  String location;// location from the UI
  String url;// the url like asia/pakistan
  String time;//the time of that location
  String flag;// the flag of that country
  bool daytime;

  WorldTime({this.location,this.flag,this.url});// constructor
  // futur is a keyword that act as apromise or a placeholder taht this fuction will complete perform than tha other come
  Future<void> getTime() async{ // keh jb tk ye nhi ho age proceed nhi karen ge
    //make the request
    try{
      Response response=await get('http://worldtimeapi.org/api/timezone/$url');
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
      // convert the now to the string
      // time=now.toString();
      daytime=now.hour>6 && now.hour<20 ? true:false;

      time = DateFormat.jm().format(now);

    }catch(e){
      print('Caught error:$e');
      time='could not get time date';
    }

  }
}



