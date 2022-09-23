import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  // This class is the config for state. It holds the values in this case notion provided by the parent and used by the build method of the State. Fields in a Widget subclass are always marked "final".

  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    // This call to set_state tells the Flutter framework that something has changed in this State, which causes it to return the build method below so that the display can reflect the updated values. If you change _counter without calling setState(), then the build method won't be called again, and so nothing would appear to happend main.,
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      ElevatedButton(onPressed: _increment, child: const Text('Increment')),
      const SizedBox(width: 16),
      Text('Count $_counter'),
    ]);
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
