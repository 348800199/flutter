import "package:flutter/material.dart";
import 'package:my_app/pages/keepAlive_demo.dart';

class KeepAclive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "keepAlive",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: KeepAoveDemo(),
    );
  }
}

class KeepAoveDemo extends StatefulWidget {
  @override
  _KeepAoveDemoState createState() => _KeepAoveDemoState();
}

class _KeepAoveDemoState extends State<KeepAoveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep Alive Demo"),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.access_alarm_outlined)),
            Tab(icon: Icon(Icons.ac_unit_rounded)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
