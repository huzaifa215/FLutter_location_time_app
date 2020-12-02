import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ),
  ); // run app
}

  // Run the code automatically the stless wedgit is used
  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold( // to divide the screen into portion
        backgroundColor: Colors.grey[900],

        appBar: AppBar(
          title: Text("ID card"),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation:0.0 // elevation for removing the shadow
        ),

        body:
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child:Column(
                children: <Widget>[
                  Text('Name',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.grey,
                  ),),
                  Text('Huzaifa Khalid',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.grey,
                    ),)
                ],
              )
            )
           // Center(
       // Container(

          // constraints: BoxConstraints.expand(
          //   height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
          // ),
          // padding: const EdgeInsets.all(8.0),
          // color: Colors.blue[600],
          // alignment: Alignment.center,
          // child: Text('Hello World',
          //     style: Theme.of(context)
          //         .textTheme
          //         .headline4
          //         .copyWith(color: Colors.white)),
          // transform: Matrix4.rotationZ(0.1),
        //),
        //Center(

          // child: IconButton(
          //   icon: Icon(Icons.android),
          //   color: Colors.red,
          //   onPressed: () {}
          //
          // ),
      // //     child: RaisedButton.icon(
      //     onPressed:(){},
      //     icon: Icon(
      //         Icons.mail),
      //       label: Text('mail me'),
      //     color: Colors.white,
      // ),

          // child:Icon(
          //   Icons.accessible,
          //   color: Colors.pink,
          //   size: 24.0,
          //   semanticLabel: 'Text to announce in accessibility modes',
          // ),
          // child:Image(
          //   image: NetworkImage('https://images.unsplash.com/photo-1439754389055-9f0855aa82c2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1934&q=80'),
          // ),
          // child: Text('Enter the Location', style: TextStyle(
          //   fontStyle: FontStyle.italic,
          //   color: Colors.black87,
          //   fontSize: 20.0,
          //   fontWeight: FontWeight.bold,
          //   letterSpacing: 2.0,
          // )
          // ),
        //),
          //  ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Text('Click'),
        //   backgroundColor: Colors.blueGrey,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation
        //     .centerFloat, // for the location
      );
    }
  }

  // for the styling or aneemation
  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return SplashScreen(
        seconds:1,
        backgroundColor: Colors.black,
        loaderColor:Colors.black,
        photoSize:200.0,
        image: Image.asset('assets/loading.gif'),
        navigateAfterSeconds: Home(),// to run seperate screen
      );
    }
  }



