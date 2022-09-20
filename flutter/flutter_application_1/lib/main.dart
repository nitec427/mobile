// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
            // child: Text('Hello World'), replace the string

            child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  // Prefixing an identifier with an underscore enforces privacy in the Dart Language and is recommended best practice for State objects.
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize: 18);
    final word_pair = WordPair.random();

    // return Text(word_pair.asPascalCase);

    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /* 1 */ ((context, index) {
          if (index.isOdd) return const Divider();
          final ind = index ~/ 2;
          if (ind >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          // return Text(_suggestions[ind].asPascalCase);

          return ListTile(
            title: Text(
              _suggestions[ind].asPascalCase,
              style: _biggerFont,
            ),
          );
        }));
  }
}
