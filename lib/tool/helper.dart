import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Helper {
  Future exitApp() {
    return Platform.isIOS ? exit(0) : SystemNavigator.pop(animated: true);
  }

  Future jumpToPage(BuildContext context, {required Widget page}) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  Future moveToPage(BuildContext context, {required Widget page}) {
    return Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => page));
  }

  void backToRootPage(BuildContext context) async {
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  double sizeScale(BuildContext context, double value) {
    return (MediaQuery.of(context).size.height / 100) * value;
  }

  bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  bool validUrl(String? s) {
    if (s == null) {
      return false;
    }
    return Uri.tryParse(s)?.isAbsolute ?? false;
  }

  void showToast(
    String msg, {
    Toast? length,
    ToastGravity? gravity,
    Color? bgColor,
    Color? textColor,
    double? size,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: length ?? Toast.LENGTH_SHORT,
      gravity: gravity ?? ToastGravity.CENTER,
      backgroundColor: bgColor ?? Colors.black,
      textColor: textColor ?? Colors.white,
      fontSize: size ?? 16.0,
    );
  }


  String? validator(String? s, {TextInputType? type}){
    if ((s ?? "").isEmpty) {
      return "Kolom wajib diisi!";
    }
    if (type == TextInputType.emailAddress &&
        !(s ?? "").isValidEmail()) {
      return "Email tidak valid!";
    }
    return null;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
            r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
            r"{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(this);
  }
}
