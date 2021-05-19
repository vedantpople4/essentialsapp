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

launchroute2() async {
  const url = 'https://www.google.co.in/maps/search/orthopedic+near+me/@19.856976,75.2535252,12z/data=!4m4!2m3!5m2!2e3!4e2';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroute3() async {
  const url = 'https://www.google.co.in/maps/search/physio+near+me/@19.8572715,75.253525,12z/data=!3m1!4b1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroute4() async {
  const url = 'https://www.google.co.in/maps/search/homeopathy+near+me/@19.8890373,75.3489263,15z/data=!3m1!4b1';
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
                height: 60,
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
                height: 60,
                width: 240,
                child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => launchroute2(),
                            child: Text('Orthopedic Near Me'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
              ),
              Container(
                height: 60,
                width: 240,
                child: Card(
                      elevation : 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => launchroute3(),
                            child: Text('Physio Near Me'),
                            style: TextButton.styleFrom(
                                primary: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
              ),
                  Container(
                    height: 60,
                    width: 240,
                    child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: ()=>launchroute4(),
                            child: Text('Homeopathy Near Me'),
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