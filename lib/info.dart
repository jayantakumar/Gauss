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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          backgroundColor: Colors.yellow,
          elevation: 10.0,
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
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
