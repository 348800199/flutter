import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getHttp() async {
    Dio dio = new Dio();
    dio.options.headers["app-token"] = "\$2a\$10\$Tudr9a23aFNVi58XluSrZeIcfAn/.zJqYRGbqbZAXcI/aq2iyNgBu";
    try {
      var response = await dio.get("https://api.virapi.com/vir_github3859780541db2/demo/liuyaoget");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("首页"),
    );
  }
}
