import 'package:flutter/material.dart';
import 'package:shopping_app/pages/ItemPage.dart';
import 'package:shopping_app/pages/ItemPage1.dart';
import 'package:shopping_app/pages/ItemPage2.dart';
import 'package:shopping_app/pages/ItemPage3.dart';
import 'package:shopping_app/pages/ItemPage4.dart';
import 'package:shopping_app/pages/ItemPage5.dart';
import 'package:shopping_app/pages/ItemPage6.dart';
import 'pages/HomePage.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          "/" : (context) =>  HomePage (),
          "itemPage":(context) =>  ItemPage(),
          "itemPage1":(context) =>  ItemPage1(),
          "itemPage2":(context) =>  ItemPage2(),
          "itemPage3":(context) =>  ItemPage3(),
          "itemPage4":(context) =>  ItemPage4(),
          "itemPage5":(context) =>  ItemPage5(),
          "itemPage6":(context) =>  ItemPage6(),
        },
    );
  }
}