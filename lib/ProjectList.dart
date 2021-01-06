import 'package:flutter/material.dart';
import 'Project.dart';
import 'RandomWords.dart';
import 'Counter.dart';
import 'SignIn.dart';
import 'Router.gr.dart';

final List<Project> ProjectList = [
  Project(
    'Startup Name Generator',
    'Creates random names by combining random words',
    RandomWords(),
    Flex(
      direction: Axis.horizontal,
    ),
    RandomWordsRoute(),
  ),
  Project(
    'Counter',
    'Keeps track of how many times a button was pressed',
    Counter(),
    Flex(
      direction: Axis.horizontal,
    ),
    CounterRoute(),
  ),
  Project(
    'Sign In',
    'An example sign in page',
    SignIn(),
    Flex(
      direction: Axis.horizontal,
    ),
    SignInRoute(),
  ),
];
