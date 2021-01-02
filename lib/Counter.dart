import 'package:flutter/material.dart';

///Is this how you document in dart?
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

///Or maybe like this?
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _increment,
          // shape: RoundedRectangleBorder(),
          label: Text('Click me'),
          icon: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: ,
      body: Center(
        child: Text('Count: $_counter'),
        heightFactor: 37,
      ),
    );
  }
}
