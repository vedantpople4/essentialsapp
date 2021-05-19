import 'package:flutter/material.dart';
import 'package:essentialsapp/Service1.dart';
import 'package:essentialsapp/Service2.dart';
import 'package:essentialsapp/Service3.dart';
import 'package:essentialsapp/Service4.dart';
import 'package:essentialsapp/TodoList.dart';
import 'package:url_launcher/url_launcher.dart';

launchroute() async {
  const url = 'https://www.cowin.gov.in/home';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroutenew() async {
  const url = 'https://www.mygov.in/covid-19';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

sendmails() async {
  const url = 'mailto:vedantpople4@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


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
                    height: 140,
                    width: 140,
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
                            child: Text('Hospital'),
                            style: TextButton.styleFrom(
                              primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height:140,
                    width:140,
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
                  Container(
                    height: 140,
                    width: 140,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/drugs.png'),
                            height: 80,
                            width: 80,
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> Service3())
                              );
                            },
                            child: Text('Medicines'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height:140,
                    width:140,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/responsive.png'),
                            height:80,
                            width:80,
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> Service4())
                              );
                            },
                            child: Text('Electronics'),
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
                  Container(
                    height: 140,
                    width: 140,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/dashboard.png'),
                            height: 80,
                            width: 80,
                          ),
                          TextButton(
                            onPressed: () => launchroutenew(),
                            child: Text('COVID Dashboard'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height:140,
                    width:140,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/syringe.png'),
                            height:80,
                            width:80,
                          ),
                          TextButton(
                            onPressed: () => launchroute(),
                            child: Text('Vaccination'),
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
                  Container(
                    height: 56,
                    width: 280,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> TodoList())
                              );
                            },
                            child: Text('Make a Note'),
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
                  Container(
                    height: 56,
                    width: 280,
                    child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => sendmails(),
                            child: Text('Send Feedback'),
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
            ],
          ),
        ),
      ),

    );
  }
}








