import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('The Essential Services App'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'This is the home page of our app',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        height: 70,
        items: <Widget>[
          Icon(Icons.add,size: 50,),
          Icon(Icons.list,size: 50,),
          Icon(Icons.add_circle,size: 50,),
          Icon(Icons.keyboard_arrow_down,size: 50,),
          Icon(Icons.headset,size: 50,),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
      ),
    );
  }
}






