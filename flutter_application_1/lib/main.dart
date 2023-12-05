import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WELCOME TITLE'),
        ),
        body: YourBodyWidget(),
      ),
    );
  }
}

class YourBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your main content goes here
    return Center(
      child: Text('Hello, World!'),
    );
  }
}
