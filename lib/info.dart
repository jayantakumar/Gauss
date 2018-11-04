import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Info extends StatelessWidget {
  final String _title;
  Info(this._title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            _title,
            style: TextStyle(fontFamily: "MyRob", fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
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
                      "assets/a.svg",
                      placeholderBuilder: (BuildContext context) {
                        return Text("loading..");
                      },
                    ),
                  ),
                ),
              )
            ]));
  }
}
