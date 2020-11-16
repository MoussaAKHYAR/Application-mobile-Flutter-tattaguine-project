import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
        child: Text("liste des pharamcies .... "),
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
    String url = "http://192.168.7.11:8081/pharmacies";
    http.get(url)
        .then((resp){
          setState(() {

          });
          
    }).catchError((err){
      print(err);
    });
  }
}