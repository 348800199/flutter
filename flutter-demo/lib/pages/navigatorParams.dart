import 'package:flutter/material.dart';

class NavigatorHome extends StatelessWidget {
  const NavigatorHome({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找小姐姐要电话"),
      ),
      body: Column(
        children: <Widget>[RouterButton(), Image.asset('images/123.png')],
      ),
    );
  }
}

class RouterButton extends StatelessWidget {
  const RouterButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text("找小姐姐"),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Xiaojiejie(),
      ),
    );
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Row(
        children: <Widget>[
          Icon(
            Icons.check,
            color: Colors.green,
          ),
          Text('$result')
        ],
      ),
      action: SnackBarAction(
        label: '知道了',
        onPressed: () {},
      ),
    ));
  }
}

class Xiaojiejie extends StatelessWidget {
  const Xiaojiejie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("大长腿"),
            onPressed: () {
              Navigator.pop(context, '大长腿');
            },
          ),
          RaisedButton(
            child: Text("大象腿"),
            onPressed: () {
              Navigator.pop(context, '大象腿');
            },
          )
        ],
      ),
    );
  }
}
