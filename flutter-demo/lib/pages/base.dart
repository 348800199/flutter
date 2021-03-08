import "package:flutter/material.dart";

class BaseDemo extends StatelessWidget {
  const BaseDemo({Key key}) : super(key: key);

  List<Widget> _listViewData() {
    List<Widget> list = List();
    for (var i = 0; i < 20; i++) {
      list.add(Card(
        color: Colors.blue,
        child: Container(
          child: Text('$i'),
          height: 80,
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("base demo"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _listViewData(),
      ),
    );
  }
}
