import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_dialog/material_dialog.dart';
import 'package:nyempeve/pages/arVunNyem(Ouvrir).dart';
import 'package:nyempeve/pages/boulNyemPage.dart';
import 'package:nyempeve/pages/kebNyemePage.dart';
import 'package:nyempeve/pages/lamba.dart';
import 'package:nyempeve/pages/semde.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';


class CorpsAppNyemePeve extends StatefulWidget {
  @override
  _CorpsAppNyemePeveState createState() => _CorpsAppNyemePeveState();
}

class _CorpsAppNyemePeveState extends State<CorpsAppNyemePeve> {
  double taille = 20.0;
  double taille2 = 5.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/font1.jpg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),),
      child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          //ListTile Lamba Page (Organiser ne numero )
          GestureDetector(child:_corpsApp(Text("1",style: styleTextListTileMyDrawer,),"Lamba", couleurBleu),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context)=>LambaPage()
            ));
          },
          ),
          Divider(),
          //ListTile Semde Page (Ranger par Ordre alphabetique)
          GestureDetector(child:_corpsApp(Text("A",style: styleTextListTileMyDrawer,),"Semde", Colors.blue),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context)=>SemdePage(),
              ));
          },),
            Divider(),
          //ListTile Keb Nyem Page (Page de Recherche)
          GestureDetector(
            child: _corpsApp(
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
                "Keb Nyem", Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PageRecherche(),
              ));
            },
          ),

          Divider(),
          //ListTile Boul Nyem Page (Page de Partage)
          GestureDetector(
            child: _corpsApp(
                Icon(Icons.share, size: 30, color: Colors.black), "Boule Nyem", Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PagePartage(),
              ));
            },
          ),
           Divider(),
          //ListTile Boul Nyem Page (Page de Partage)
          GestureDetector(
            child: _corpsApp(
                Icon(Icons.folder_open, size: 30, color: Colors.black), "Ar vun Nyem", Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ArVunNyem(),
              ));
            },
          ),
          Divider(),
          //ListTile Ta a vun nNyem (Fermeture de l'application)
          GestureDetector(
            child: _corpsApp(
                Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.black,
                ),
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
                      'Annuler',
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
                      'Oui',
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
    ),
    );
  }
}

_corpsApp(
  Widget leading,
  String label,
  Color couleur,
) {
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
      color: couleurNoire, size: 30,
    ),
  );
}
