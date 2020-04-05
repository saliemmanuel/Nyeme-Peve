import 'package:flutter/material.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';

class LambaPage extends StatefulWidget {
  @override
  _LambaPageState createState() => _LambaPageState();
}

class _LambaPageState extends State<LambaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lamba",
          style: styleTextApp,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage("assets/images/font1.jpg"), // <-- BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 10.0,
                    children: <Widget>[
                      GestureDetector(
                        child: numer("1"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("2"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("3"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("4"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("5"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("6"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("7"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("8"),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: numer("..."),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  numer(String s) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        "$s",
        style: styleTextListTileMyDrawer,
      ),
      color: Colors.blue,
    );
  }
}
