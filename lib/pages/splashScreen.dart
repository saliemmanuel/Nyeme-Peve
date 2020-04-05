import 'package:flutter/material.dart';
import 'package:nyempeve/pages/menus.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashIntroScreen extends StatefulWidget {
  @override
  _SplashIntroScreenState createState() => _SplashIntroScreenState();
}

class _SplashIntroScreenState extends State<SplashIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      imageBackground: AssetImage("assets/images/font1.jpg"),
      loadingText: Text(
        "Nyem Pévé",
        style: styleNyemPeve,
      ),
      navigateAfterSeconds: MenuPage(),
    );
  }
}
