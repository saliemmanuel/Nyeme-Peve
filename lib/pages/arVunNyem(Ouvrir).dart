import 'package:flutter/material.dart';

import 'package:nyempeve/pages/semde.dart';

class ArVunNyem extends StatefulWidget {
  @override
  _ArVunNyemState createState() => _ArVunNyemState();
}

class _ArVunNyemState extends State<ArVunNyem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ar vun Nyem"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/font1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(children: <Widget>[
          
          Divider(),
          SemdePage(),
        ],),
      ),

    );
  }
}
