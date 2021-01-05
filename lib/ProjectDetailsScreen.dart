import 'package:flutter/material.dart';

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
