// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_playground/animated_transition/animated_transition_destination.dart'
    as _i8;
import 'package:flutter_playground/animated_transition/animated_transition_home.dart'
    as _i7;
import 'package:flutter_playground/Counter.dart' as _i4;
import 'package:flutter_playground/Project.dart' as _i11;
import 'package:flutter_playground/ProjectListScreen.dart' as _i2;
import 'package:flutter_playground/RandomWords.dart' as _i3;
import 'package:flutter_playground/SignIn.dart' as _i5;
import 'package:flutter_playground/SpringSimulation.dart' as _i9;
import 'package:flutter_playground/WelcomePage.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ProjectListScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<ProjectListScreenRouteArgs>(
          orElse: () => ProjectListScreenRouteArgs());
      return _i1.AdaptivePage(
          entry: entry,
          child: _i2.ProjectListScreen(onTapped: args.onTapped),
          maintainState: true,
          fullscreenDialog: false);
    },
    RandomWordsRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i3.RandomWords(),
          maintainState: true,
          fullscreenDialog: false);
    },
    FavoritesRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i3.Favorites(),
          maintainState: true,
          fullscreenDialog: false);
    },
    CounterRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i4.Counter(),
          maintainState: true,
          fullscreenDialog: false);
    },
    SignInRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i5.SignIn(),
          maintainState: true,
          fullscreenDialog: false);
    },
    WelcomePageRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i6.WelcomePage(),
          maintainState: true,
          fullscreenDialog: false);
    },
    AnimatedTransitionHomeRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i7.AnimatedTransitionHome(),
          maintainState: true,
          fullscreenDialog: false);
    },
    AnimatedTransitionDestinationRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i8.AnimatedTransitionDestination(),
          maintainState: true,
          fullscreenDialog: false,
          transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SpringSimulationRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry,
          child: _i9.SpringSimulation(),
          maintainState: true,
          fullscreenDialog: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ProjectListScreenRoute.name,
            path: '/', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(RandomWordsRoute.name,
            path: '/random-words', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(FavoritesRoute.name,
            path: '/random-words/favorites',
            fullMatch: false,
            usesTabsRouter: false),
        _i1.RouteConfig(CounterRoute.name,
            path: '/Counter', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(SignInRoute.name,
            path: '/sign-in', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(WelcomePageRoute.name,
            path: '/sign-in/welcome', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(AnimatedTransitionHomeRoute.name,
            path: '/animated-transition-home',
            fullMatch: false,
            usesTabsRouter: false),
        _i1.RouteConfig(AnimatedTransitionDestinationRoute.name,
            path: '/animated-transition-destination',
            fullMatch: false,
            usesTabsRouter: false),
        _i1.RouteConfig(SpringSimulationRoute.name,
            path: '/spring-simulation', fullMatch: false, usesTabsRouter: false)
      ];
}

class ProjectListScreenRoute
    extends _i1.PageRouteInfo<ProjectListScreenRouteArgs> {
  ProjectListScreenRoute({@_i10.required this.onTapped})
      : super(name,
            path: '/', args: ProjectListScreenRouteArgs(onTapped: onTapped));

  final void Function(_i11.Project) onTapped;

  static const String name = 'ProjectListScreenRoute';
}

class ProjectListScreenRouteArgs {
  const ProjectListScreenRouteArgs({@_i10.required this.onTapped});

  final void Function(_i11.Project) onTapped;
}

class RandomWordsRoute extends _i1.PageRouteInfo {
  const RandomWordsRoute() : super(name, path: '/random-words');

  static const String name = 'RandomWordsRoute';
}

class FavoritesRoute extends _i1.PageRouteInfo {
  const FavoritesRoute() : super(name, path: '/random-words/favorites');

  static const String name = 'FavoritesRoute';
}

class CounterRoute extends _i1.PageRouteInfo {
  const CounterRoute() : super(name, path: '/Counter');

  static const String name = 'CounterRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

class WelcomePageRoute extends _i1.PageRouteInfo {
  const WelcomePageRoute() : super(name, path: '/sign-in/welcome');

  static const String name = 'WelcomePageRoute';
}

class AnimatedTransitionHomeRoute extends _i1.PageRouteInfo {
  const AnimatedTransitionHomeRoute()
      : super(name, path: '/animated-transition-home');

  static const String name = 'AnimatedTransitionHomeRoute';
}

class AnimatedTransitionDestinationRoute extends _i1.PageRouteInfo {
  const AnimatedTransitionDestinationRoute()
      : super(name, path: '/animated-transition-destination');

  static const String name = 'AnimatedTransitionDestinationRoute';
}

class SpringSimulationRoute extends _i1.PageRouteInfo {
  const SpringSimulationRoute() : super(name, path: '/spring-simulation');

  static const String name = 'SpringSimulationRoute';
}
