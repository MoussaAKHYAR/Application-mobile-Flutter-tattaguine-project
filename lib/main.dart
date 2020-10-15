import 'package:flutter/material.dart';

void main()=>runApp(
  new MaterialApp(
    home: new MyApp(),
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      appBarTheme: AppBarTheme(
        color: Colors.cyanAccent
      ),
    ),
    debugShowCheckedModeBanner: false,
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("CFP-Tattaguine",style: TextStyle(
        color: Colors.black, fontFamily: 'times New Roman',fontSize: 22,
        )),
      ),
      body: Center(
        child: Text("Bienvenue chez Moussa",style: TextStyle(
            color: Colors.orange, fontFamily: 'times New Roman',fontSize: 22
        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Formation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Candidature'),
          ),
        ],
      ),
    );
  }
}

