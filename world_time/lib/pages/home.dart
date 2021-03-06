import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Map data={};//empty map
  @override
  Widget build(BuildContext context) {
    // loading page se argument wale data ko yaa pe pkrn he
    data= data.isNotEmpty? data : ModalRoute.of(context).settings.arguments;
   // print (data);
    // set background
    // this code match the condition if true than day.png else night.png
    String bgimage=data['isDayTime']? 'day1.jpg':'night.jpg';
    Color bgcolor=data['isDayTime']? Colors.green[800] : Colors.black12;
    return Scaffold(
      appBar:AppBar(
        title: Text('Home Screen'),
        backgroundColor: bgcolor,
      ),
      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image:AssetImage('assets/$bgimage'),
              fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                onPressed:() async {
                  //navigator that push data from 1 to other route
                  dynamic result= await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data={
                      'time':result['time'],
                      'location':result['location'],
                      'isDayTime':result['isDayTime'],
                      'flag':result['flag']
                    };
                  });
                },
                icon:Icon(
                  Icons.edit_location,
                  color: Colors.grey[200],
                ),
                  label: Text('Edit Location',
                  style: TextStyle(),),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                      fontSize: 60.0,
                      letterSpacing: 2.0
                  ),
                ),

      ],
            ),
          ),
        ),
      ),
    );
  }
}
