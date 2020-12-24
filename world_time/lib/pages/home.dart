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
    // loading page se argumanet wale data ko yaa pe pkrn he 
    data=ModalRoute.of(context).settings.arguments;
    print (data);

    return Scaffold(
      appBar:AppBar(
        title: Text('Home Screen'),
      ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
              onPressed:(){
                //navigator that push data from 1 to other route
                Navigator.pushNamed(context, '/location');
              },
              icon:Icon(Icons.edit_location),
                label: Text('Edit Location'),
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
    );
  }
}
