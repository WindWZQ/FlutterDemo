import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static const _DEF_COLOR = Colors.lightBlue;
  static const _DEF_TEXT_COLOR = Colors.white;
  static const _DEF_FONT_SIZE = 16.0;

  // show short
  static void ss(String content) {
    FlutterToast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: _DEF_COLOR,
        textColor: _DEF_TEXT_COLOR,
        fontSize: _DEF_FONT_SIZE);
  }

  // show long
  static void sl(String content) {
    FlutterToast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: _DEF_COLOR,
        textColor: _DEF_TEXT_COLOR,
        fontSize: _DEF_FONT_SIZE);
  }

  // net error
  static void ne() {
    FlutterToast.showToast(
        msg: "连接失败，请检查网络",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: _DEF_COLOR,
        textColor: _DEF_TEXT_COLOR,
        fontSize: _DEF_FONT_SIZE);
  }
}
