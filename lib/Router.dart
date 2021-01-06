import 'package:auto_route/annotations.dart';
import 'package:flutter_playground/FirstScreen.dart';
import 'Counter.dart';
import 'ProjectListScreen.dart';
import 'RandomWords.dart';
import 'SignIn.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: ProjectListScreen, initial: true),
    AutoRoute(page: RandomWords),
    AutoRoute(page: Counter),
    AutoRoute(page: SignIn),
  ],
)
class $AppRouter {}
