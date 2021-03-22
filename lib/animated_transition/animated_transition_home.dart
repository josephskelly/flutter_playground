import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/Router.gr.dart';

class AnimatedTransitionHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Transition'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Go!'),
            onPressed: () {
              // Animation is defined in Router.dart
              context.router.push(AnimatedTransitionDestinationRoute());
            },
          ),
        ),
      ),
    );
  }
}

// TODO: Create a tween https://flutter.dev/docs/cookbook/animation/page-route-animation
