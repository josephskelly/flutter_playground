import 'package:flutter/material.dart';

class AnimatedTransitionDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Transition'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Cool.'),
        ),
      ),
    );
  }
}
