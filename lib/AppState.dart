import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

// TODO: save name generator suggestions

class AppState extends ChangeNotifier {
  final suggestions = <WordPair>[];
  final savedSuggestions = Set<WordPair>();

  addAll(Set<WordPair> wordPairs) {
    suggestions.addAll(wordPairs);
    notifyListeners();
  }

  isFavorite(WordPair wordPair) {
    return savedSuggestions.contains(wordPair);
  }

  addSuggestion(WordPair wordPair) {
    savedSuggestions.add(wordPair);
    notifyListeners();
  }

  removeSuggestion(WordPair wordPair) {
    savedSuggestions.remove(wordPair);
    notifyListeners();
  }

  removeAll() {
    savedSuggestions.clear();
    notifyListeners();
  }
}
