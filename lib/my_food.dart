import 'package:flutter/material.dart';
import 'package:my_food/common/constans.dart';
import 'package:my_food/common/styles.dart';
import 'package:my_food/page/splash_page.dart';

class MyFood extends StatelessWidget {
  const MyFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kGAppName,
      theme: tdMain(context),
      home: const SplashPage(),
    );
  }
}