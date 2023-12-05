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
          title: Text('Your Title'),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to Your App!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          'This is the information section below the title.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add your button action here
            print('Button Clicked!');
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}
