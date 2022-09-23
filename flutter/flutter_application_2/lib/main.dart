// Writing an app from the scratch (by hand - replicated)

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked 'final'
  final Widget title;

// Override just point out that the function also defined in ancestor class, but it is being redefined to sth else in current class. It's also used to annotate the implementation of abstract method.
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0, // in logical pxs
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.redAccent[800]),
        child: Row(
          children: [
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu',
            ),
            // Expanded expand its child to fill the available space
            Expanded(
              child: title,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              tooltip: 'Search',
            ),
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget
}


void main() {
  runApp(const MaterialApp(
    title: 'My App',
    home: SafeArea(child: MyScaffold)
  ))
}