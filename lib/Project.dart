import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Project {
  final String title;
  final String description;
  final Widget builder;
  final Widget action;
  final route;

  Project(
    this.title,
    this.description,
    this.builder,
    this.action,
    this.route,
  );
}
