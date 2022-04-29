// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('textos'),),
        body: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'texto prueba estandar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 20,
                color: Colors.blueGrey),
            ),
          ),
            RichText(
              text: TextSpan(
                text: 'texto enriquecido',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.normal, color: Colors.black),
                children: <TextSpan>[
                  TextSpan( 
                      text: ' bold',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber)),
                  TextSpan(text:' texto regular',
                  style: TextStyle(color: Colors.green)),  
                ]),
            )
        ],
      )
    );
  }
}
