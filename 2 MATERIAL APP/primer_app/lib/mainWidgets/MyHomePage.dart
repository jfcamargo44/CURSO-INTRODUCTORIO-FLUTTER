// ignore_for_file: prefer_const_constructors, unnecessary_import, file_names

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 202, 200, 200),
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          
            ElevatedButton.icon(
              onPressed: () => setState(() {
                _counter=0;
                }),
              icon: Icon(Icons.refresh), 
              label: Text('start again')),

          ],
        ),
      ),

      //drawer: Drawer(),

     
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
       ),

      
       
    );


  }
}