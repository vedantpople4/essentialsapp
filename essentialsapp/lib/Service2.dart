import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchroute() async {
  const url = 'https://www.google.co.in/maps/search/groceries+near+me/@19.8566804,75.2535253,12z/data=!4m4!2m3!5m2!2e3!4e2';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: false,forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class Service2 extends StatelessWidget{
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
                          onPressed: () => launchroute(),
                          child: Text('Groceries Near Me'),
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
                          child: Text('This is Service 1.2'),
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
                          child: Text('This is Service 1.3'),
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
                          child: Text('This is Service 1.4'),
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

    );
  }
}