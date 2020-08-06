import 'package:flutter/material.dart';

class NaviUtil {

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static void push(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  static void pushAndRemove(BuildContext context, Widget page) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return page;
    }), (route) => route == null);
  }
}
