import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text("World TIme"),
        backgroundColor: Colors.black12,
        centerTitle: true,
      ),
      body: Center(
        child:Text('Enter the Location', style:TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black87,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      child:Text('Click'),
        backgroundColor: Colors.blueGrey,
    ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // for the location
      ),
    ),
  );// run app
}