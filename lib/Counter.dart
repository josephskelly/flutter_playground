import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

// TODO: Add something fun for counter challenge.

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  // TODO: Implement this somewhere. a button, maybe?
  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      bottomNavigationBar: BottomAppBar(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _increment,
          // shape: RoundedRectangleBorder(),
          label: Text('Click me'),
          icon: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonAnimator: ,
      body: Center(
        child: Column(
          children: [
            Text('Count: $_counter'),
            Container(
              child: MyRiveAnimation(),
              height: 200,
              width: 200,
            ),
          ],
        ),
        heightFactor: 37,
      ),
    );
  }
}

class MyRiveAnimation extends StatefulWidget {
  @override
  _MyRiveAnimationState createState() => _MyRiveAnimationState();
}

class _MyRiveAnimationState extends State<MyRiveAnimation> {
  final riveFileName = 'assets/crap_animation.riv';
  Artboard _artboard;

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
  }

  void _loadRiveFile() async {
    final bytes = await rootBundle.load(riveFileName);
    final file = RiveFile();

    if (file.import(bytes)) {
      // Select an animation by its name
      setState(() => _artboard = file.mainArtboard
        ..addController(
          SimpleAnimation('Animation 1'),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _artboard != null
      ? Rive(
          artboard: _artboard,
          fit: BoxFit.cover,
        )
      : Container();
  }
}

