
import 'package:flutter/material.dart';
import 'package:internship/countryMap.dart';
import 'package:internship/Country.dart';

import 'package:internship/AllCountries.dart';
import 'package:internship/main.dart';



class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),

      ),

      body:
      new MaterialApp(
        debugShowCheckedModeBanner: false,
            home: new AllCountries(),
            routes: {
              CountryMap.routeName: (ctx) => CountryMap(),
              Country.routeName: (ctx) => Country()
            },
          )
      );

  }


}