import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nyempeve/pages/arVunNyem(Ouvrir).dart';
import 'package:nyempeve/pages/boulNyemPage.dart';
import 'package:nyempeve/pages/kebNyemePage.dart';
import 'package:nyempeve/pages/lamba.dart';
import 'package:nyempeve/pages/semde.dart';
import 'package:nyempeve/pages/setting.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';
import 'package:material_dialog/material_dialog.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer(BuildContext context);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 200.0,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fontDrawer.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            accountEmail: Text(
              " Nyem Pévé",
            ),
            accountName: Text(""),
          ),
          //ListTile Lamba Page (Organiser ne numero )
          GestureDetector(
            child: _corpsApp(
                Text(
                  "1",
                  style: styleTextListTileMyDrawer,
                ),
                "Lamba",
                couleurBleu),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LambaPage()));
            },
          ),
          Divider(),
          //ListTile Semde Page (Ranger par Ordre alphabetique)
          GestureDetector(
            child: _corpsApp(
                Text(
                  "A",
                  style: styleTextListTileMyDrawer,
                ),
                "Semde",
                couleurBleu),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SemdePage(),
              ));
            },
          ),
          Divider(),
          //ListTile Keb Nyem Page (Page de Recherche)
          GestureDetector(
            child: _corpsApp(
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
                "Keb Nyem",
                couleurBleu),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PageRecherche(),
              ));
            },
          ),

          Divider(),
          //ListTile Boul Nyem Page (Page de Partage)
          GestureDetector(
            child: _corpsApp(Icon(Icons.share, size: 30, color: Colors.black),
                "Boule Nyem", couleurBleu),
            onTap: () {
              /*Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PagePartage(),
              ));*/
            
            },
          ),
          Divider(),
          //ListTile Ar vun Nyem
          GestureDetector(
            child: _corpsApp(
                Icon(Icons.folder_open, size: 30, color: Colors.black),
                "Ar vun Nyem",
                Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ArVunNyem(),
              ));
            },
          ),
          Divider(),
          //ListTile Parametre (Parametre App)
          GestureDetector(
            child: _corpsApp(
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black,
                ),
                "Parametre",
                couleurBleu),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Setting(),
              ));
            },
          ),
          Divider(),
          //ListTile Ta a vun nNyem (Fermeture de l'application)
          GestureDetector(
            child: _corpsApp(Icon(Icons.close, size: 30, color: Colors.black),
                "Ta a vun Nyem", Colors.red),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (BuildContext context){
                  return MaterialDialog(
                content: Text("Voulez vous vraiment quiter Nyem Pévé ?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text(
                      'CANCEL',
                      style: Theme.of(context).textTheme.button.copyWith(
                          fontSize: 12.0,
                          color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'OK',
                      style: Theme.of(context).textTheme.button.copyWith(
                          fontSize: 12.0,
                          color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                ],
              );
                }
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

_corpsApp(Widget leading, String label, Color couleur) {
  return ListTile(
    leading: Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: couleur,
      ),
      child: leading,
    ),
    title: Text(
      "$label",
      style: styleTextCorpsApp,
    ),
    trailing: Icon(
      Icons.keyboard_arrow_right,
      color: couleurNoire,
    ),
  );
}
