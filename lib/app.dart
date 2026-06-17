import 'package:flutter/material.dart';

import 'about.dart';
import 'botom_nav.dart';
import 'details.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get number => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Practice01',

        debugShowCheckedModeBanner: false,

        initialRoute: 'Botom_nav',
        routes: {
          'Home': (context) => Home(),
          'About': (context) => About(),
          'Details': (context) => Details(name: number,),
          'Botom_nav': (context) => Botom_nav(),

        }
    );
  }
}
