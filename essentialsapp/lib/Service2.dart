import 'package:flutter/material.dart';



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
                          onPressed: (){},
                          child: Text('This is Service 2.1'),
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
                          child: Text('This is Service 2.2'),
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
                          child: Text('This is Service 2.3'),
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
                          child: Text('This is Service 2.4'),
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