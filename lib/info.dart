import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Info extends StatefulWidget {
  final String _title;
  Info(this._title);

  @override
  InfoState createState() {
    return new InfoState(_title);
  }
}

class InfoState extends State<Info> {
  String _title;
  InfoState(this._title);
  final Map<String, int> img = {
    "ALGEBRA": 0,
    "AREA AND VOLUME": 1,
    "TRIGNOMETRY": 2,
    "LIMITS": 3,
    "DERIVATIVES": 4,
    "INTEGRALS": 5,
    "PROBABLITY": 6,
    "STATISTICS": 7,
    "TRANSFORMATIONS": 8,
    "SERIES EXPANSIONS": 9
  };
  final List<String> path = ["svg/imp.png", "svg/aandv.png", "", ""];
  double a = 0.3;

  void change() {
    setState(() {
      a = 0.28;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          backgroundColor: Color(0xFF72DEFF),
          elevation: 10.0,
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          highlightElevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColorLight,
        body: Container(
            child: PhotoView(
          imageProvider: AssetImage(
            path[img[_title]],
          ),
          backgroundColor: Theme.of(context).primaryColor,
          minScale: a,
          maxScale: 2.0,
          scaleStateChangedCallback: (ai) {
            change();
          },
          gaplessPlayback: true,
        )));
  }
}
