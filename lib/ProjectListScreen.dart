import 'package:flutter/material.dart';
import 'package:flutter_playground/Project.dart';
import 'package:flutter_playground/Router.gr.dart';
import 'ProjectList.dart';
import 'package:auto_route/auto_route.dart';

class ProjectListScreen extends StatelessWidget {
  final ValueChanged<Project> onTapped;
  final List<Project> projects = ProjectList;
  // final List<Project> projects;

  ProjectListScreen({
    @required this.onTapped,
  });
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Playground'),
      ),
      body: ListView(
        children: [
          for (var project in projects)
            ListTile(
              title: Text(project.title),
              subtitle: Text(project.description),
              onTap: () => context.router.push(RandomWordsRoute()),
            ),
        ],
      ),
    );
  }
}
