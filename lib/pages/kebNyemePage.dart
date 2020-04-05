import 'package:flutter/material.dart';


class PageRecherche extends StatefulWidget {
  @override
  _PageRechercheState createState() => _PageRechercheState();
}

class _PageRechercheState extends State<PageRecherche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Keb Nyem",
            disabledBorder: InputBorder.none,
            border: InputBorder.none,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.keyboard_voice), onPressed: (){},)
        ],
      ),
      body: Center(child: Text("Keb Nyem"),),
    );
  }
}

