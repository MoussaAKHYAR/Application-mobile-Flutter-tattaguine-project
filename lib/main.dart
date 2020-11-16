import 'package:flutter/material.dart';
import 'package:tattaguine_mobile/profile.dart';

import 'liste-pharmacie.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("./images/profile.jpg"),
                  radius: 50,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ProfilePage()
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.dehaze),
              title: Text('Liste des pharmacie'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PharmaciePage()
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.school),
              title: Text('Candidature'),
            ),
          ],
        ),
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

