import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';
import 'package:flutter/services.dart' show rootBundle;

class SemdePage extends StatefulWidget {
  @override
  _SemdePageState createState() => _SemdePageState();
}

class _SemdePageState extends State<SemdePage> {
  String data = " ";
  String data2 = "";
  fetchFileData() async{
      String responsesText;
       String responsesText2;
      responsesText = await rootBundle.loadString("assets/compoment/1.txt");
      responsesText2 = await rootBundle.loadString("assets/compoment/2.txt");
      setState(() {
        data = responsesText;
        data2 = responsesText2;
      });
  }
@override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Semde',
            style: styleTextApp,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/font1.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              _expantionCard(
                  "A",
                  " ",
                  "A PRESENT CHERE DAMES",
                  "         5 A present, chere Dame, voici je te demande -- ce n'est pas un commandement nouveau que je t’écris, c’est celui que nous avons reçu dès le commencement :  aimons-nous les uns les autres. 6 Et voici en quoi consiste l’amour : c’est que nous vivions selon les commandements de Dieu. Tel est le commandement selon lequel nous devons vivre, comme vous l’avez entendu depuis le commencement : il n’a pas d’autre but que de vous amener à vivre dans l’amour. La fidélité à la vérité 7 Un grand nombre de personnes qui entraînent les autres dans l’erreur se sont  répandues à travers le monde. Ils ne reconnaissent pas que Jésus-Christ est devenu véritablement un homme. Celui qui parle ainsi est trompeur, c’est l’anti-Christ. 8 Prenez donc garde à vous-mêmes, pour que vous ne perdiez pas le fruit de nos efforts, mais que vous receviez une pleine récompense. 9 Celui qui ne reste pas attaché à l’enseignement qui concerne le Christ, mais s’en écarte, n’a pas de communion avec Dieu. Celui qui reste attaché à cet enseignement est uni au Père comme au Fils."),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("B", "", "DEUXIEME LETTRE DE JEAN", "$data2"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("C", "", "PREMIERE LETTRE AUX CORINTHIENS", "$data"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("D", "", "DEUXIEME LETTRE DE JEAN",
                  " Deuxième lettre de Jean Chapitre 1 Salutation\nChapitre 1 Salutation\n1 L’Ancien , à la  Dame que Dieu a choisie et à ses enfants que j’aime dans la vérité. Ce n’est pas moi seul qui vous aime, mais aussi  tous ceux qui connaissent la vérité, 2 à cause de la vérité qui demeure en nous et qui sera éternellement avec nous. 3 La grâce, la bonté et la paix qui nous  viennent de Dieu, le Père, et de Jésus-Christ, le Fils du Père, seront avec nous pour que nous en vivions dans la vérité et dans l’amour. Le commandement d’aimer 4 J’ai éprouvé une très grande joie à voir certains de tes enfants vivre selon la vérité, comme nous en avons reçu le commandement du Père."),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("E", "", "DEUXIEME LETTRE DE JEAN", "$data2"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("F", '', "PREMIERE LETTRE AUX CORINTHIENS", "$data"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _expantionCard("G", "", "PREMIERE LETTRE AUX CORINTHIENS", "$data"),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ));
  }
}

_expantionCard(
    String lettreCard, String subTile, String libelet, String cropsCard) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: ExpansionTileCard(
      leading: CircleAvatar(child: Text("$lettreCard"), backgroundColor: Colors.teal, foregroundColor: Colors.white,),
      title: Text("$libelet"),
      subtitle: Text("$subTile"),
      children: <Widget>[
      
       Container(
         decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("assets/images/font2.png"),
           fit: BoxFit.fill),
         ),
         child:  Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              "$cropsCard",
            ),
          ),
        ),
       ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonHeight: 52.0,
          buttonMinWidth: 90.0,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              onPressed: () {},
              child: Column(
                children: <Widget>[
                  Icon(Icons.star),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Text('Save'),
                ],
              ),
            ),
           
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              onPressed: () {},
              child: Column(
                children: <Widget>[
                  Icon(Icons.share),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Text('Boule Nyem'),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
