import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var page = Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: _body(context),
    );

    return page;
  }

  Widget _body(BuildContext context) {
    var baseColor = Colors.black87;
    var primaryColor = Colors.red;

    var s1Child = GestureDetector(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(Icons.home, color: _isCurrent(0) ? primaryColor : baseColor),
          Text("首页",
              style: TextStyle(
                  color: _isCurrent(0) ? primaryColor : baseColor,
                  fontSize: 16))
        ]),
      ),
      onTap: () => onTap(0),
    );
    var s1 = Expanded(
      flex: 1,
      child: s1Child,
    );

    var s2Child = GestureDetector(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.green,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(Icons.camera, color: _isCurrent(1) ? primaryColor : baseColor),
          Text("乘车",
              style: TextStyle(
                  color: _isCurrent(1) ? primaryColor : baseColor,
                  fontSize: 16))
        ]),
      ),
      onTap: () => onTap(1),
    );
    var s2 = Expanded(
      flex: 1,
      child: s2Child,
    );

    var s3Child = GestureDetector(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.blue,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(Icons.person, color: _isCurrent(2) ? primaryColor : baseColor),
          Text("我的",
              style: TextStyle(
                  color: _isCurrent(2) ? primaryColor : baseColor,
                  fontSize: 16))
        ]),
      ),
      onTap: () => onTap(2),
    );
    var s3 = Expanded(
      flex: 1,
      child: s3Child,
    );

    var parent = Row(
      children: [s1, s2, s3],
    );

    return parent;
  }

  bool _isCurrent(int index) {
    return index == _currentIndex;
  }

  void onTap(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
