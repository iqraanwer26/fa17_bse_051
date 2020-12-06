import 'package:fa17_bse_051/main.dart/';
import 'package:flutter/material.dart';
import 'package:fa17_bse_051/SimpleDice.dart';
import 'package:fa17_bse_051/HardDice.dart';




class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.black,
                      color: Colors.grey,
                      child: Text(
                        'Simple Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: simpleDice,
                    ),
                  ),
                ),
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(

                      textColor: Colors.black,
                      color: Colors.grey,
                      child: Text(
                        'Hard Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: hardDice,
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Iqra'),
                accountEmail: Text('iqraa264@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: ()=> _showSecondPage(context) ,
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
              subtitle: Text('03046789321'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('iqraa264@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

    );
  }
  void simpleDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  SimpleDice()));
    });
  }

  void hardDice() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HardDice()));
    });
  }
  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
            ),
          ),
        ),
      ),
    );
  }
}
