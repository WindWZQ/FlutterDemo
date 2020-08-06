import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/LoadingDialog.dart';

class DialogUtil {
  static void showLoading(BuildContext context) {
//    showDialog(
//        context: context,
//        barrierDismissible: false,
//        builder: (context) {
//          return LoadingDialog();
//        });

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => WillPopScope(
            child: LoadingDialog(),
            onWillPop: () async {
              return Future.value(false);
            }));
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }
}
