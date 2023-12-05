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
          // Title of the app bar
          title: Text('My Flutter App'),

          // Actions (icons/buttons) on the right side of the app bar
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle the search action
                print('Search pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Handle the settings action
                print('Settings pressed');
              },
            ),
          ],
        ),
        body: Center(
          child: Text('This is the body of the screen'),
        ),
      ),
    );
  }
}
