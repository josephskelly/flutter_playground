import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/Router.gr.dart';
import 'package:flutter_playground/SpringSimulation.dart';
import 'package:flutter_playground/animated_transition/animated_transition_home.dart';
import 'Counter.dart';
import 'ProjectListScreen.dart';
import 'RandomWords.dart';
import 'SignIn.dart';
import 'animated_transition/animated_transition_home.dart';
import 'animated_transition/animated_transition_destination.dart';
import 'WelcomePage.dart';

// to rebuild Router.gr:
// flutter packages pub run build_runner watch
// or
// flutter packages pub run build_runner build

/// Creates page routes for given pages as PageRoute().
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    // TODO: Give these pages more descriptive names.
    AutoRoute(page: ProjectListScreen, initial: true),
    // Startup Name Generator
    AutoRoute(page: RandomWords),
    AutoRoute(path: '/random-words/favorites', page: Favorites),
    // Counter App
    AutoRoute(page: Counter),
    // Sign In Page
    AutoRoute(page: SignIn),
    AutoRoute(path: '/sign-in/welcome', page: WelcomePage),
    // Animated Transition
    AutoRoute(page: AnimatedTransitionHome),
    CustomRoute<bool>(
        page: AnimatedTransitionDestination,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    // Physics simulation of spring force
    AutoRoute(page: SpringSimulation),
  ],
)
class $AppRouter {}
