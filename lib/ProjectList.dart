import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_transition/animated_transition_home.dart';
import 'Project.dart';
import 'RandomWords.dart';
import 'Counter.dart';
import 'SignIn.dart';
import 'Router.gr.dart';
import 'SpringSimulation.dart';

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
  Project(
    'Animated Transition',
    'A custom animation for a page route',
    AnimatedTransitionHome(),
    Flex(
      direction: Axis.horizontal,
    ),
    AnimatedTransitionHomeRoute(),
  ),
  Project(
    'Spring Simulation',
    'A widget attached to a spring',
    SpringSimulation(),
    Flex(
      direction: Axis.horizontal,
    ),
    SpringSimulationRoute(),
  )
];
