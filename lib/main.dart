//import 'dart:math';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
//import 'package:vector_math/vector_math_64.dart' as vm;
import 'info.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(31, 42, 48, 1.0),
        primaryColorLight: Color.fromRGBO(0, 24, 38, 1.0),
        primaryColorDark: Color(0x000000),
        fontFamily: "MyRob",
      ),
    );
  }
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _topics = [
    "ALGEBRA",
    "AREA AND VOLUME",
    "TRIGNOMETRY",
    "LIMITS",
    "DERIVATIVES",
    "INTEGRALS",
    "PROBABLITY",
    "STATISTICS",
    "TRANSFORMATIONS",
    "SERIES EXPANSIONS"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  height: 80.0,
                  width: 80.0,
                  child: SvgPicture.asset(
                    "assets/myg.svg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Topic(_topics[index]);
                },
                itemCount: _topics.length,
                itemExtent: 70.0,
                padding: EdgeInsets.all(8.0),
              ),
            ),
          ]),
    );
  }
}

class Topic extends StatelessWidget {
  final String topic;
  Topic(this.topic);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: new Text(
        topic,
        style: new TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontFamily: "MyRob",
        ),
        textAlign: TextAlign.center,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Info(topic)),
        );
      },
    );
  }
}
