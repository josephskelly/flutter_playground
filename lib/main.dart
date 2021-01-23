// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/AppState.dart';
import 'package:flutter_playground/Router.gr.dart';
import 'package:provider/provider.dart';

// TODO: Add persistent data storage

void main() => runApp(
      MultiProvider(
        // MARK: Providers
        providers: [
          // Use ChangeNotifierProvider to update UI.
          // Use Provider to update model only.
          ChangeNotifierProvider(
            // TODO: Separate AppState into specialized providers.
            create: (context) => AppState(),
          ),
        ],
        child: Playground(),
      ),
    );

// TODO: Confirm if StatefulWidget is still necessary after using provider.
class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  // MARK: Router
  final _appRouter = AppRouter();

  // MARK: Light Theme
  final ThemeData light = ThemeData(
    // Use colorScheme instead of ThemeData...copyWith() to avoid
    //  resetting to default values.
    colorScheme: ColorScheme.light(),
    primaryColor: Colors.white,
    accentColor: Colors.white,
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     primary: Colors.black,
    //     backgroundColor: Colors.grey[200],
    //   ),
    // ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey[200],
      foregroundColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.grey[200],
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.black,
        ),
      ),
    ),
  );

  // MARK: Dark Theme
  final ThemeData dark = ThemeData(
    // Use colorScheme instead of ThemeData...copyWith() to avoid
    //  resetting to default values.
    colorScheme: ColorScheme.dark(),
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     primary: Colors.grey[200],
    //     backgroundColor: Colors.grey[800],
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.grey[800],
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[200]),
    //     foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    //   ),
    // ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: light,
      darkTheme: dark,
      title: 'Flutter Playground',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
