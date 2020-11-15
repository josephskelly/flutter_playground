import 'package:flutter/material.dart';
import 'package:flutter_playground/Project.dart';

class HomePage extends StatelessWidget {
  final List<Project> projects;
  final ValueChanged<Project> onTapped;

  HomePage({
    @required this.projects,
    @required this.onTapped,
  });

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
              onTap: () => onTapped(project),
            ),
        ],
      ),
    );
  }
}
