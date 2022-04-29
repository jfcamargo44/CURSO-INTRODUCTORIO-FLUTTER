// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
   @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('container',textAlign:TextAlign.center)),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin:EdgeInsets.only(top:24),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue.shade900, width: 2),
            shape: BoxShape.circle,
            color: Colors.blue
          ),
          padding:EdgeInsets.all(16),
          child: Icon(Icons.accessible_forward,color: Colors.white,size: 35
          ,),

      )
    );
  }
}