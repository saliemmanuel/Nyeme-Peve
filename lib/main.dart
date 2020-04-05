import 'package:flutter/material.dart';
import 'package:nyempeve/pages/splashScreen.dart';
import 'package:nyempeve/utils/couleurEtStyle.dart';


void main() => runApp(
      MaterialApp(
        home: SplashIntroScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         primarySwatch: couleurPremiere,
         dividerTheme : DividerThemeData(
           indent: 30.0,
           endIndent: 12.0,
           color: Colors.black,
         ),
        ),
      ),
    );
