// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'ProjectListScreen.dart' as _i2;
import 'RandomWords.dart' as _i3;
import 'Counter.dart' as _i4;
import 'SignIn.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'Project.dart' as _i7;

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
    CounterRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.Counter());
    },
    SignInRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i5.SignIn());
    },
    FavoritesRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.Favorites());
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
        _i1.RouteConfig<CounterRoute>(CounterRoute.name,
            path: '/Counter',
            routeBuilder: (match) => CounterRoute.fromMatch(match)),
        _i1.RouteConfig<SignInRoute>(SignInRoute.name,
            path: '/sign-in',
            routeBuilder: (match) => SignInRoute.fromMatch(match)),
        _i1.RouteConfig<FavoritesRoute>(FavoritesRoute.name,
            path: '/random-words/favorites',
            routeBuilder: (match) => FavoritesRoute.fromMatch(match))
      ];
}

class ProjectListScreenRoute extends _i1.PageRouteInfo {
  ProjectListScreenRoute({@_i6.required this.onTapped})
      : super(name, path: '/');

  ProjectListScreenRoute.fromMatch(_i1.RouteMatch match)
      : onTapped = null,
        super.fromMatch(match);

  final void Function(_i7.Project) onTapped;

  static const String name = 'ProjectListScreenRoute';
}

class RandomWordsRoute extends _i1.PageRouteInfo {
  const RandomWordsRoute() : super(name, path: '/random-words');

  RandomWordsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RandomWordsRoute';
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

class FavoritesRoute extends _i1.PageRouteInfo {
  const FavoritesRoute() : super(name, path: '/random-words/favorites');

  FavoritesRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'FavoritesRoute';
}
