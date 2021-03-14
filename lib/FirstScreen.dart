

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

/*
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(title: 'Internship App', home:SamplePage(),
      debugShowCheckedModeBanner: false,



    );


  }



}

class SamplePage extends StatefulWidget {
  @override

  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {

  List<Widget> _samplePages = [

    Center(
      child: Text('Page 1'

        ,
        style: TextStyle(fontWeight: FontWeight.bold,
          fontFamily: "Brand-Bold",
          fontSize: 67,),
      ),


    ),
    Center(child: Text('Page 2',

      style: TextStyle(fontWeight: FontWeight.bold,
        fontFamily: "Brand-Bold",
        fontSize: 67,),

    ),

    ),
    Center(child: Text('Page 3',
      style: TextStyle(fontWeight: FontWeight.bold,
        fontFamily: "Brand-Bold",
        fontSize: 67,),

    ),

    ),
    Center(child: Text('Page 4',

      style: TextStyle(fontWeight: FontWeight.bold,
        fontFamily: "Brand-Bold",
        fontSize: 67,),

    ),


    ),
    Center(child: Text('Page 5',
      style: TextStyle(fontWeight: FontWeight.bold,
        fontFamily: "Brand-Bold",
        fontSize: 67,),
    ),


    ),
  ];
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),


      body:

      Column(
        children: <Widget>[
          Flexible(
            child: PageView.builder(
              controller: _controller,
              itemCount: _samplePages.length,
              itemBuilder: (BuildContext context, int index) {
                return _samplePages[index % _samplePages.length];
              },
            ),
          ),
          Container(
            color: Colors.lightBlueAccent,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /*FlatButton(
    child: Text('Prev'),
    onPressed: () {
    _controller.previousPage(
    duration: _kDuration, curve: _kCurve);
    },
    ),*/
                FlatButton(
                  child: Text('Next'),
                  onPressed: () {
                    _controller.nextPage(duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ),
          )
        ],


      ),


    );
  }

}
*/

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   final _pageController = PageController();
    final _currentPageNotifier = ValueNotifier<int>(0);


    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: _buildBody(),
      );
    }

    _buildBody() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildStepIndicator(),
          _buildPageView(),
          flatButtoncreate(),

        ],
      );
    }

    _buildPageView() {
      return Expanded(
        child: PageView.builder(

          itemCount: 8,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {


            return Center(

              child: Text(
                'Page ${index + 1}',

                // ignore: deprecated_member_use
                style:

                Theme
                    .of(context)
                    .textTheme
                    // ignore: deprecated_member_use
                    .display3,

              ),


            );

          },



          onPageChanged: (int index) {


            _currentPageNotifier.value = index;

          }


        ),



      );

    }

    flatButtoncreate(){

      return


      FlatButton(
        child: Text('Next'),
        onPressed: (){

          _pageController.animateToPage(++_currentPageNotifier.value, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
        },

        //_buildPageView,

            // ignore: unnecessary_statements





        color: Colors.yellow,


      );



    }

    _buildStepIndicator() {
      return Container(

        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: StepPageIndicator(
          itemCount: 8,
          currentPageNotifier: _currentPageNotifier,
          size: 30,
          onPageSelected: (int index) {
            if (_currentPageNotifier.value > index)
              _pageController.jumpToPage(index);
          },
        ),

      );
    }
  }
