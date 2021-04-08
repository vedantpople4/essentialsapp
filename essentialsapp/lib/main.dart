import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:essentialsapp/Service1.dart';
import 'package:essentialsapp/Service2.dart';
import 'package:essentialsapp/Service3.dart';
import 'package:essentialsapp/Service4.dart';
import 'package:essentialsapp/TodoList.dart';



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
                  Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/hospital-room.png'),
                            height: 80,
                            width: 80,
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> Service1())
                              );
                              },
                            child: Text('Healthcare'),
                            style: TextButton.styleFrom(
                              primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height:150,
                    width:150,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/ingredients.png'),
                            height:80,
                            width:80,
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> Service2())
                              );
                            },
                            child: Text('Grocery'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
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
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> Service3())
                            );
                          },
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
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> Service4())
                            );
                          },
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
        height: 50,
        items: <Widget>[
          Icon(Icons.add,size: 50),
          Icon(Icons.list,size: 50,),
          Icon(Icons.add_circle,size: 50,),
          Icon(Icons.keyboard_arrow_down,size: 50,),
          Icon(Icons.person,size: 50,),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
      ),
    );
  }
}






