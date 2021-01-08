// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';
import 'package:flutter_playground/AppState.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    var _saved = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        child: Container(
          height: 50,
          color: Theme.of(context).primaryColor,
        ),
        // notchMargin: 20,
        // shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          pushSaved();
        },
        icon: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        label: Text(
          'Favorites',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    var saved = context.read<AppState>();
    // final _savedSuggestions =
    //     Provider.of<AppState>(context, listen: false).savedSuggestions;
    final alreadySaved = saved.savedSuggestions.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        if (alreadySaved) {
          saved.removeSuggestion(pair);
        } else {
          saved.addSuggestion(pair);
        }
      },
    );
  }

  // var cart = context.watch<CartModel>();
  //
  // return ListView.builder(
  // itemCount: cart.items.length,
  // itemBuilder: (context, index) => ListTile(
  // leading: Icon(Icons.done),
  // trailing: IconButton(
  // icon: Icon(Icons.remove_circle_outline),
  // onPressed: () {
  // cart.remove(cart.items[index]);
  // },
  // ),
  // title: Text(
  // cart.items[index].name,
  // style: itemNameStyle,
  // ),
  // ),
  // );
  void pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          var saved = context.watch<AppState>();
          final tiles = saved.savedSuggestions.map(
            (WordPair pair) {
              return ListTile(
                title: Text(pair.asPascalCase, style: _biggerFont),
              );
            },
          );

          // return ListView.builder(
          //   itemCount: saved.savedSuggestions.length,
          //   itemBuilder: (context, index) => ListTile(
          //     trailing: IconButton(
          //       icon: Icon(Icons.favorite),
          //       onPressed: ,
          //     ),
          //   ),
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
}
