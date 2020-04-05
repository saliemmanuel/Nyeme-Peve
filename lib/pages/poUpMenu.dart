import 'package:flutter/material.dart';

class Apropos extends StatefulWidget {
  @override
  _AproposState createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("À-Propos"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/font1.jpg"), fit: BoxFit.fill),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Card(
                child: Center(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(" "),
                        Text(
                          "\"Namba Mbur Ifray\"\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              textBaseline: TextBaseline.alphabetic),
                        ),
                        Divider(
                          height: 35,
                        ),
                        Text(
                            "    Est une application en langue Pévé développée par :"),
                        Text("KALNONE BAYTA JEREMIE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                            "  Etudiant en Informatique Licence 3 à l'Université de Maroua."),
                        Text("\n\nJe Remercie : \n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 75.0),
                          child: Column(
                            children: <Widget>[
                              _remerciement(
                                "WANBADANG Lazare",
                              ),
                              _remerciement('Rev Pasteur BASSI Philippe'),
                              _remerciement("VAISSABA Salomon"),
                              _remerciement("DICKMI VAIDJOUA Emmanuel"),
                              _remerciement("Red-doukou"),
                              _remerciement("KAGONBE Jérémie"),
                            ],
                          ),
                        ),
                        Text(
                            "\n\nPour l\'amelioration de cette application, veillez me contacter par"),
                        Text("E-mail : kalnonebjeremie@yahoo.com",
                            style: TextStyle(color: Colors.blue)),
                        Text(
                          "WhatsApp : +237 690816441 / +235 62565136\n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" "),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_remerciement(String nom) {
  return Row(
    children: <Widget>[
      Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(23.0)),
      ),
      SizedBox(
        width: 15.0,
      ),
      Text("$nom",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ))
    ],
  );
}
