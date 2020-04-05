import 'package:flutter/material.dart';
import 'package:nyempeve/pages/corpsAppNyemePeve.dart';
import 'package:nyempeve/pages/drawer.dart';
import 'package:nyempeve/pages/poUpMenu.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(context),
      appBar: AppBar(
        title: Text(
          "Menu",
          style: styleTextApp,
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                value: "apropos",
                height: 20,
                child: Text(' À-Propos '),
                enabled: true,
              ),
            ],
            onSelected: (value) {
              print("valeur : $value");
              if (value == "apropos") {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext cxt) => Apropos()));
              }
            },
            tooltip: "À-Propos",
          ),
        ],
      ),
      body: CorpsAppNyemePeve(),
    );
  }
}
