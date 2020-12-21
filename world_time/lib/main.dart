import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:,
  ));

}






















































































//changing data on runtime so
// class QuoteList extends StatefulWidget {
//
//   @override
//   _QuoteListState createState() => _QuoteListState();
// }
//
// class _QuoteListState extends State<QuoteList> {
//   List<String> quotes=[
//     'My name is huzaifa Khalid',
//     'I am a student of Computere Science',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         title: Text('Qoutes'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[800],
//       ),
//       body:Column(
//         children: quotes.map((qoute) {// map is equal to foreach for traversing the data
//           return Text(qoute);
//         }).toList(),
//       )
//     );
//   }
// }
//
//

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Home(),
//   ),
//   ); // run app
// }
//   // Run the code automatically the stless wedgit is used
//   class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int increment=0;
//       @override
//
//     Widget build(BuildContext context) {
//       return Scaffold( // to divide the screen into portion
//         backgroundColor: Colors.grey[900],
//
//         appBar: AppBar(
//           title: Text("ID card"),
//           backgroundColor: Colors.grey[850],
//           centerTitle: true,
//           elevation:0.0 // elevation for removing the shadow
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             setState(() {
//               increment++;
//             });
//
//           },
//           child:Icon(Icons.add),
//           backgroundColor: Colors.grey[800],
//           ),
//
//         body:
//             Padding(
//               padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//               child:Column(
//
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Center(
//                   child:CircleAvatar(
//                     backgroundImage: AssetImage('assets/Screenshot (86).png'),
//                     radius: 40.0,
//                   ),
//                   ),
//                   Divider(
//                     height:60.0,
//                         color:Colors.grey,
//                   ),
//                   //SizedBox(height: 200.0),
//
//                   Text('Name',
//                   style: TextStyle(
//                     letterSpacing: 2.0,
//                     color: Colors.grey,
//                   ),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text('Huzaifa Khalid',
//                     style: TextStyle(
//                       letterSpacing: 2.0,
//                       color: Colors.amberAccent[200],
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text('Current Number',
//                     style: TextStyle(
//                       letterSpacing: 2.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text(
//                     '$increment',
//                     style: TextStyle(
//                       letterSpacing: 2.0,
//                       color: Colors.amberAccent[200],
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   SizedBox(height: 10.0),
//                   Text('CNIC_Number',
//                     style: TextStyle(
//                       letterSpacing: 2.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text('32405-0459764-7',
//                     style: TextStyle(
//                        color:Colors.amberAccent[200],
//                       fontSize: 18.0,
//                       letterSpacing: 1.0,
//
//                       ),
//                     ),
//
//                   SizedBox(height: 30.0),
//                   Row(
//                     children: <Widget>[
//                       Icon(
//                         Icons.mail,
//                         color:Colors.grey[400],
//                   ),
//                       SizedBox(width: 10.0),
//                       Text(
//                         'kr75495@gamil.com',
//                         style: TextStyle(
//                           letterSpacing: 2.0,
//                             color:Colors.amberAccent[200],
//                         ),
//                       ),
//     ]
//                   )
//                 ],
//               )
//             )
//            // Center(
//        // Container(

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
//       );
//
//     }
// }
  
  // class Test extends StatefulWidget {
  //   @override
  //   _TestState createState() => _TestState();
  // }
  //
  // class _TestState extends State<Test> {
  //   @override
  //   Widget build(BuildContext context) {
  //     return Container();
  //   }
  // }
  //

  // for the styling or aneemation
  // class MyApp extends StatefulWidget {
  //   @override
  //   _MyAppState createState() => _MyAppState();
  // }
  //
  // class _MyAppState extends State<MyApp> {
  //   @override
  //
  //   Widget build(BuildContext context) {
  //     return SplashScreen(
  //       seconds:1,
  //       backgroundColor: Colors.black,
  //       loaderColor:Colors.black,
  //       photoSize:200.0,
  //       image: Image.asset('assets/loading.gif'),
  //       navigateAfterSeconds: Home(),// to run seperate screen
  //     );
  //   }
  // }
  //


