import 'package:flutter/material.dart';


class PagePartage extends StatefulWidget {
  @override
  _PagePartageState createState() => _PagePartageState();
}

class _PagePartageState extends State<PagePartage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Boule Nyem"),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/font1.jpg"),
            fit: BoxFit.fill,
          )
        ),
        child: ListView(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}