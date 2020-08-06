import 'package:flutter/material.dart';

class CountDownWidget extends StatefulWidget {
  CountDownWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CountDownWidgetState();
}

class CountDownWidgetState extends State<CountDownWidget> {

  void start() {
    print("_CountDownWidgetState start");
  }

  @override
  Widget build(BuildContext context) {
    var body = Text("cccccccccc");

    return body;
  }
}
