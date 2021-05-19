import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchroute() async {
  const url = 'https://www.google.co.in/maps/search/groceries+near+me/@19.8566804,75.2535253,12z/data=!4m4!2m3!5m2!2e3!4e2';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroute1() async {
  const url = 'https://www.amazon.in/pantry-online-grocery-shopping-store/b?ie=UTF8&node=9574332031';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroute2() async {
  const url = 'https://www.flipkart.com/grocery-supermart-store?marketplace=GROCERY';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchroute3() async {
  const url = 'https://www.bigbasket.com';
  if (await canLaunch(url)) {
    await launch(url);
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
                      child: Text('Groceries Near Me'),
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
                      onPressed: () => launchroute1(),
                      child: Text('Amazon Pantry'),
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
                      child: Text('Flipkart Grocery'),
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
                      onPressed: ()=>launchroute3(),
                      child: Text('Bigbasket'),
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