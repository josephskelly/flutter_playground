import 'package:flutter/material.dart';
import 'package:flutter_playground/Project.dart';
import 'ProjectList.dart';
import 'package:auto_route/auto_route.dart';

class ProjectListScreen extends StatelessWidget {
  final ValueChanged<Project> onTapped;
  final List<Project> projects = ProjectList;

  ProjectListScreen({
    @required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joe's Portfolio"),
      ),
      body: ListView(
        children: [
          for (var project in projects)
            ListTile(
              title: Text(project.title),
              subtitle: Text(project.description),
              onTap: () => context.router.push(project.route),
            ),
        ],
      ),
    );
  }
}
