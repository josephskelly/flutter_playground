import 'package:flutter/material.dart';

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
        child: Text('Count: $_counter'),
        heightFactor: 37,
      ),
    );
  }
}
