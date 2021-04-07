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
      body: new Center(
        child: Card(
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        TextButton(
                          onPressed: (){},
                          child: Text('This is Service 1'),
                          style: TextButton.styleFrom(
                            primary: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        TextButton(
                          onPressed: (){},
                          child: Text('This is Service 2'),
                          style: TextButton.styleFrom(
                              primary: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        TextButton(
                          onPressed: (){},
                          child: Text('This is Service 3'),
                          style: TextButton.styleFrom(
                              primary: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 20,
                    child: Column(
                      children: <Widget>[
                        TextButton(
                          onPressed: (){},
                          child: Text('This is Service 4'),
                          style: TextButton.styleFrom(
                              primary: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
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






