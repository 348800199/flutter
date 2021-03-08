import 'package:flutter/material.dart';
import 'assets.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "search bar",
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}

class SearchBarDemo extends StatefulWidget {
  SearchBarDemo({Key key}) : super(key: key);

  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
          ),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentList : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
