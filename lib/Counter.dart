import 'package:flutter/material.dart';

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
  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          onLongPress: _decrement,
          child: Text('Increment'),
        ),
        Text('Count: $_counter'),
      ],
    );
  }
}
