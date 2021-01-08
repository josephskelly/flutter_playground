import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

// TODO: save name generator suggestions

class AppState extends ChangeNotifier {
  final savedSuggestions = Set<WordPair>();

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
