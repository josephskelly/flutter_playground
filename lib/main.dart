// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/Router.gr.dart';

// TODO: Add Navigation 2.0
// Added with auto route. but not complete.
//  TODO: Add routes to all projects.

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Playground',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

// class ProjectDetailsScreen extends StatelessWidget {
//   final Project project;
//   ProjectDetailsScreen({
//     @required this.project,
//   });
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(project.title),
//         actions: [
//           project.action,
//         ],
//       ),
//       body: project.builder,
//     );
//   }
// }
