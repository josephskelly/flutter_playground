// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/AppState.dart';
import 'package:flutter_playground/Router.gr.dart';
import 'package:provider/provider.dart';

void main() => runApp(Playground());

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  void initState() {
    super.initState();
  }

  final _appRouter = AppRouter();
  final ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    accentColor: Colors.grey[400],
    textTheme: TextTheme(
      headline4: TextStyle(color: Colors.black),
    ),
  );
  final ThemeData dark = ThemeData.dark().copyWith(
    accentColor: Colors.grey[400],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.grey[800],
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AppState()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: light,
        darkTheme: dark,
        title: 'Flutter Playground',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
