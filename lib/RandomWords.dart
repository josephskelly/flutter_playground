// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';
import 'package:flutter_playground/AppState.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/Router.gr.dart';

// TODO: add a button to reset view and build a new list of suggestions.
// TODO: Add a button to remove items from favorites list
// TODO: Create a more consistent naming scheme for this project.
// TODO: CHeck for redundant rebuilds of widgets. There may be too many changenotifierproviders watching data.

final _biggerFont = TextStyle(fontSize: 18.0);

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    var _suggestions = context.watch<AppState>();
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.push(FavoritesRoute());
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
      body: Suggestions(),
    );
  }
}

// TODO: Rebuild as separate class with its own build method.
class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _suggestions = context.watch<AppState>().suggestions;
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        // TODO: Change to a simple context.watch/read();
        return Row(_suggestions[index]);
      },
    );
  }
}

class Row extends StatelessWidget {
  final WordPair suggestion;

  Row(
    this.suggestion,
  );

  @override
  Widget build(BuildContext context) {
    var favoriteList = context.watch<AppState>();
    final isFavorite = context.watch<AppState>().isFavorite(suggestion);
    return ListTile(
      title: Text(
        suggestion.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : null,
      ),
      onTap: () {
        if (isFavorite) {
          favoriteList.removeSuggestion(suggestion);
        } else {
          favoriteList.addSuggestion(suggestion);
        }
      },
    );
  }
}

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var favorites = context.watch<AppState>().savedSuggestions;
    final tiles = favorites.map(
      (WordPair pair) {
        return ListTile(
          title: Text(pair.asPascalCase, style: _biggerFont),
        );
      },
    );
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
  }
}
