// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'ProjectListScreen.dart' as _i2;
import 'RandomWords.dart' as _i3;
import 'Counter.dart' as _i4;
import 'SignIn.dart' as _i5;
import 'animated_transition/animated_transition_home.dart' as _i6;
import 'animated_transition/animated_transition_destination.dart' as _i7;
import 'SpringSimulation.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'Project.dart' as _i10;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ProjectListScreenRoute.name: (entry) {
      var route = entry.routeData.as<ProjectListScreenRoute>();
      return _i1.AdaptivePage(
          entry: entry, child: _i2.ProjectListScreen(onTapped: route.onTapped));
    },
    RandomWordsRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.RandomWords());
    },
    FavoritesRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.Favorites());
    },
    CounterRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.Counter());
    },
    SignInRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i5.SignIn());
    },
    AnimatedTransitionHomeRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry, child: _i6.AnimatedTransitionHome());
    },
    AnimatedTransitionDestinationRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i7.AnimatedTransitionDestination(),
          transitionsBuilder: _i1.TransitionsBuilders.fadeIn);
    },
    SpringSimulationRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i8.SpringSimulation());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<ProjectListScreenRoute>(ProjectListScreenRoute.name,
            path: '/',
            routeBuilder: (match) => ProjectListScreenRoute.fromMatch(match)),
        _i1.RouteConfig<RandomWordsRoute>(RandomWordsRoute.name,
            path: '/random-words',
            routeBuilder: (match) => RandomWordsRoute.fromMatch(match)),
        _i1.RouteConfig<FavoritesRoute>(FavoritesRoute.name,
            path: '/random-words/favorites',
            routeBuilder: (match) => FavoritesRoute.fromMatch(match)),
        _i1.RouteConfig<CounterRoute>(CounterRoute.name,
            path: '/Counter',
            routeBuilder: (match) => CounterRoute.fromMatch(match)),
        _i1.RouteConfig<SignInRoute>(SignInRoute.name,
            path: '/sign-in',
            routeBuilder: (match) => SignInRoute.fromMatch(match)),
        _i1.RouteConfig<AnimatedTransitionHomeRoute>(
            AnimatedTransitionHomeRoute.name,
            path: '/animated-transition-home',
            routeBuilder: (match) =>
                AnimatedTransitionHomeRoute.fromMatch(match)),
        _i1.RouteConfig<AnimatedTransitionDestinationRoute>(
            AnimatedTransitionDestinationRoute.name,
            path: '/animated-transition-destination',
            routeBuilder: (match) =>
                AnimatedTransitionDestinationRoute.fromMatch(match)),
        _i1.RouteConfig<SpringSimulationRoute>(SpringSimulationRoute.name,
            path: '/spring-simulation',
            routeBuilder: (match) => SpringSimulationRoute.fromMatch(match))
      ];
}

class ProjectListScreenRoute extends _i1.PageRouteInfo {
  ProjectListScreenRoute({@_i9.required this.onTapped})
      : super(name, path: '/');

  ProjectListScreenRoute.fromMatch(_i1.RouteMatch match)
      : onTapped = null,
        super.fromMatch(match);

  final void Function(_i10.Project) onTapped;

  static const String name = 'ProjectListScreenRoute';
}

class RandomWordsRoute extends _i1.PageRouteInfo {
  const RandomWordsRoute() : super(name, path: '/random-words');

  RandomWordsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RandomWordsRoute';
}

class FavoritesRoute extends _i1.PageRouteInfo {
  const FavoritesRoute() : super(name, path: '/random-words/favorites');

  FavoritesRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'FavoritesRoute';
}

class CounterRoute extends _i1.PageRouteInfo {
  const CounterRoute() : super(name, path: '/Counter');

  CounterRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CounterRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in');

  SignInRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SignInRoute';
}

class AnimatedTransitionHomeRoute extends _i1.PageRouteInfo {
  const AnimatedTransitionHomeRoute()
      : super(name, path: '/animated-transition-home');

  AnimatedTransitionHomeRoute.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'AnimatedTransitionHomeRoute';
}

class AnimatedTransitionDestinationRoute extends _i1.PageRouteInfo {
  const AnimatedTransitionDestinationRoute()
      : super(name, path: '/animated-transition-destination');

  AnimatedTransitionDestinationRoute.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'AnimatedTransitionDestinationRoute';
}

class SpringSimulationRoute extends _i1.PageRouteInfo {
  const SpringSimulationRoute() : super(name, path: '/spring-simulation');

  SpringSimulationRoute.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'SpringSimulationRoute';
}
