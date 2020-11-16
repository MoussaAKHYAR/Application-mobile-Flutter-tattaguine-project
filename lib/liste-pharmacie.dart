import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class PharmaciePage extends StatefulWidget {
  @override
  _PharmaciePageState createState() => _PharmaciePageState();
}

class _PharmaciePageState extends State<PharmaciePage> {
  List<dynamic> listVilles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pharmacies"),),
      body: Center(
        child: this.listVilles==null?CircularProgressIndicator():
            ListView.builder(
                itemCount: (this.listVilles==null)?0:this.listVilles.length,
                itemBuilder: (context,index){
                  return Card(
                    color: Colors.cyanAccent,
                    child: RaisedButton(
                        child: Text(this.listVilles[index]['nom']),
                    ),
                  );
                }
            )
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPharmacie();
  }

  void loadPharmacie() {
    String url = "http://192.168.137.132:8081/pharmacies";
    http.get(url)
        .then((resp){
          setState(() {
            this.listVilles=json.decode(resp.body)['_embedded']['pharmacies'];
          });
    }).catchError((err){
      print(err);
    });
  }
}