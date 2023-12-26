import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Example',
      home: CardExample(),
    );
  }
}

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Example'),
      ),
      body: Center(
        child: Card(
          // Card properties
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // Card content
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Card Title'),
                subtitle: Text('Card Subtitle'),
                leading: Icon(Icons.star),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle button tap
                    },
                    child: Text('ACTION 1'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle button tap
                    },
                    child: Text('ACTION 2'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
