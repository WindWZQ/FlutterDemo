import 'package:flutter/material.dart';

class LoadingDialog extends Dialog {
  final String text = "加载中，请稍候...";

  @override
  Widget build(BuildContext context) {
    var content = Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(text, style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );

    var parent = Material(
        type: MaterialType.transparency,
        child:
            Center(child: SizedBox(width: 120, height: 120, child: content)));

    return parent;
  }
}
