import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({Key? key}) : super(key: key);

  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Bar Demo'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Card(
        child: Center(
          child: Text('結果:$query'),
        ),
        color: Colors.redAccent,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggestion
        : searchList.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          query = suggestionList[index];
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(query),
          ));
        },
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: TextStyle(color: Colors.grey),
                text: suggestionList[index].substring(query.length),
              ),
            ],
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
