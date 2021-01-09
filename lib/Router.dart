import 'package:auto_route/annotations.dart';
import 'package:flutter_playground/FirstScreen.dart';
import 'Counter.dart';
import 'ProjectListScreen.dart';
import 'RandomWords.dart';
import 'SignIn.dart';

// to rebuild Router.gr:
// flutter packages pub run build_runner watch

/// Creates page routes for given pages as PageRoute().
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    // TODO: Give these pages more descriptive names.
    AutoRoute(page: ProjectListScreen, initial: true),
    AutoRoute(page: RandomWords),
    AutoRoute(page: Counter),
    AutoRoute(page: SignIn),
    AutoRoute(path: '/random-words/favorites', page: Favorites),
  ],
)
class $AppRouter {}
