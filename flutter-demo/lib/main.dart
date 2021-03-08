import 'package:flutter/material.dart';
import 'package:my_app/pages/base.dart';
import 'package:my_app/pages/bottom_navigation.dart';
import 'package:my_app/pages/keepAlive_demo.dart';
import 'package:my_app/pages/navigatorParams.dart';
import 'package:my_app/pages/product.dart';
import 'package:my_app/pages/keepAlive.dart';
import 'package:my_app/pages/pullUpLoading.dart';
import 'package:my_app/pages/search_bar.dart';

void main() {
  runApp(
    // ProductHome()
    // NavigatorHome()
    // Bottom_navigation()
    // KeepAlive()
    // Search_bar()
    // BaseDemo()
    // PullUpLoading()
    MaterialApp(
      title: "app",
      home: PullUpLoading(),
    ),
  );
}
