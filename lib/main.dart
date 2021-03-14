

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/FirstScreen.dart';
import 'package:internship/SecondScreen.dart';

import 'package:internship/countryMap.dart';
import 'package:internship/Country.dart';

import 'package:internship/AllCountries.dart';

void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Internship App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomePage(),
    );


  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(

        title: Text(

          "Internship App" ,

         textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontFamily: "Brand-Bold",
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Screens:",
              style: TextStyle(
                fontSize: 32.0,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.w500,

              )
            ),

            Padding(padding: EdgeInsets.all(10.0),
             child: FlatButton(
               splashColor: Colors.green,
               onPressed: () {

                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) => FirstScreen(),
                 ),
                 );
               },
                 padding: EdgeInsets.symmetric(
                   horizontal: 25.0,
                   vertical: 10.0,
                 ),
                 color: Colors.green,
                 textColor: Colors.white,
                 child: Text(
                   "First Screen",
                    style:TextStyle(
                    fontSize: 20.0,
                 ),
                 ),
               ),
            ),
          Padding(padding: EdgeInsets.all(10.0),
                child: FlatButton(onPressed: () {


                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                    );


                },
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.0,
                    vertical: 10.0,
                  ),
                    color: Colors.teal,
                    textColor: Colors.white,


                  child: Text(
                    "Second Screen",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
              )
             ),

          ],
        )
      ),
    );
  }
}
