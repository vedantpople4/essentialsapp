import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('The Essential Services App'),
        backgroundColor: Colors.black,
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/abhay.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Abhay Yadav'),
                        Text('Email: abhayesa@gmail.com'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/applogo.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Ritik Konduskar'),
                        Text('Email: ritikesa@gmail.com'),
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
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/vedant.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Vedant Pople'),
                        Text('Email: vedantesa@gmail.com'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/applogo.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Udit Deshmukh'),
                        Text('Email: uditesa@gmail.com'),
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
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/vishnu.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Vishnuvardhan'),
                        Text('Email: vishnuesa@gmail.com'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: 180,
                  child: Card(
                    elevation : 20,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/applogo.jpg'),
                          height: 80,
                          width: 80,
                        ),
                        Text('Name: Utkarsh Mishra'),
                        Text('Email: utkarshesa@gmail.com'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 130,
              width: 180,
              child: Card(
                elevation : 20,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/applogo.jpg'),
                      height: 80,
                      width: 80,
                    ),
                    Text('Name: Lemma Lachore Bonga'),
                    Text('Email: lemmaesa@gmail.com'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}