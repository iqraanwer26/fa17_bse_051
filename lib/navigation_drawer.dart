import 'package:flutter/material.dart';
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
        title: Text('DICE App'),
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
                    color: Colors.blue[700],
                    child: Text(
                      'Simple',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    onPressed: () {
                      debugPrint('simple');
                    },
                  ),
                ),
          ),
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(

                      textColor: Colors.white,
                      color: Colors.blue[700],
                      child: Text(
                        'Hard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      onPressed: () {
                        debugPrint('hard');
                      },
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
                accountName: Text('Iqra Anwer'),
                accountEmail: Text('iqraa264@gmail.com'),
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
              subtitle: Text('03006639665'),
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
}
