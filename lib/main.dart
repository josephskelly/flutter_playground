// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/AppState.dart';
import 'package:flutter_playground/Router.gr.dart';
import 'package:provider/provider.dart';

// TODO: Add persistent data storage

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => AppState(),
        child: Playground(),
      ),
    );

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  final _appRouter = AppRouter();
  final ThemeData light = ThemeData(
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.white,
      accentColor: Colors.white,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
      ));
  final ThemeData dark = ThemeData(
    colorScheme: ColorScheme.dark(),
    // primaryColor: Colors.grey[800],
    // accentColor: Colors.grey,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// Light Theme
      theme: light,
      darkTheme: dark,
      title: 'Flutter Playground',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
