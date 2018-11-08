import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Info extends StatefulWidget {
  final String _title;
  Info(this._title);

  @override
  InfoState createState() {
    return new InfoState();
  }
}

class InfoState extends State<Info> {
  final List<String> img = ["svg/imp.png", "svg/imp.png", "svg/imp.png"];

  double a = 0.3;

  void change() {
    setState(() {
      a = 0.28;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          backgroundColor: Color(0xFFFFFCF44),
          elevation: 10.0,
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          label: Text(
            "Close",
            style: TextStyle(color: Colors.black),
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
            "svg/imp.png",
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
