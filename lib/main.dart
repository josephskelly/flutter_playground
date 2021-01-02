// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/HomePage.dart';
import 'package:flutter_playground/RandomWords.dart';
import 'package:flutter_playground/Counter.dart';
import 'package:flutter_playground/Project.dart';

void main() => runApp(Playground());

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  void initState() {
    super.initState();
  }

  Project _selectedProject;
  bool show404 = false;
  List<Project> projects = [
    Project(
      'Startup Name Generator',
      'Creates random names by combining random words',
      RandomWords(),
      IconButton(
        icon: Icon(Icons.list),
        // onPressed: MaterialPage(
        //   key: ValueKey('test'),
        //   child:
        // ),
      ),
    ),
    Project(
      'Counter',
      'Keeps track of how many times a button was pressed',
      Counter(),
      Flex(
        direction: Axis.horizontal,
      ),
      // IconButton(
      //   icon: Icon(Icons.baby_changing_station),
      // ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playground',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('HomePage'),
            child: HomePage(
              projects: projects,
              onTapped: _handleProjectTapped,
            ),
          ),
          if (show404)
            MaterialPage(
              key: ValueKey('UnknownPage'),
              child: UnknownScreen(),
            )
          // else if (_selectedProject == projects[0]) // Startup Name Generator
          //   MaterialPage(
          //     key: ValueKey(_selectedProject),
          //     child: _selectedProject.builder,
          //   )
          else if (_selectedProject != null)
            MaterialPage(
              key: ValueKey(_selectedProject),
              child: ProjectDetailsScreen(project: _selectedProject),
            )
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          // Update the list of pages by setting _selectedProject to null
          setState(() {
            _selectedProject = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleProjectTapped(Project project) {
    setState(() {
      _selectedProject = project;
    });
  }
}

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unknown Project'),
      ),
      body: Text('An error occurred.'),
    );
  }
}

class ProjectDetailsScreen extends StatelessWidget {
  final Project project;
  ProjectDetailsScreen({
    @required this.project,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
        actions: [
          project.action,
        ],
      ),
      body: project.builder,
    );
  }
}
