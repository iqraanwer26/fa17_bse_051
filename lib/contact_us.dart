import 'package:fa17_bse_051/contact_us.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: contact_us(
          logo: AssetImage('images/crop.jpg'),
          email: 'iqraa264@gmail.com',
          companyName: 'Flutter Developers',
          phoneNumber: '03005540776',
          githubUserName: 'iqra26',
          tagLine: 'Flutter Developer',
          instagramUserName: 'iqraa_264',
        ),
      ),
    );
  }
}