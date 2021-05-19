import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchroute() async {
  const url = 'https://www.google.co.in/maps/search/hospitals+near+me/@19.8566804,75.2535253,12z/data=!4m4!2m3!5m2!2e3!4e2';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Service1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Hospital'),
        backgroundColor: Colors.black,
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40,
                width: 240,
                child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => launchroute(),
                            child: Text('Hospitals Near Me'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
              ),
              Container(
                height: 40,
                width: 240,
                child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: (){},
                            child: Text('This is Service 1.2'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
              ),
              Container(
                height: 40,
                width: 240,
                child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: (){},
                            child: Text('This is Service 1.3'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
              ),
                  Container(
                    height: 40,
                    width: 240,
                    child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: (){},
                            child: Text('This is Service 1.4'),
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
    ),
    );
  }
}