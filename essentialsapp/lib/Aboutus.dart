import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class Aboutus extends StatelessWidget{
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
            Image(
              image: AssetImage('images/applogo.jpg'),
              height: 180,
              width: 180,
            ),
            Container(
              width: 300,
                child: Text('The Essential Services App is your one stop solution for all the resources to overcome this Pandemic. Our app provides access to major resources like Hospitals, Groceries, Medicines and Electronics. Use the Find near me option to search the nearest of any of the above commodities. Also we provide you the option to find the things you want to buy online. This will help you to get the Delivery on your doorsteps. We also provide different vendors to our users to compare the price of a product and then get the best deals. Apart from these services, you can also use the COVID-19 Dashboard and Vaccination slot booking to be updated about the Vaccination slots and COVID-19 resources provided by the government. We also give you the option to make notes and lists to keep up with the things you want to buy. We also would like to get your suggestions and constructive criticism through the Feedback option.',
                textAlign: TextAlign.center,)
            ),
          ],
        ),
      ),
    );
  }
}