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
          title: Text('Card Demo'),
        ),
        body: Center(
          child: Card(
            elevation: 8, // Add a shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Beautiful Home in San Francisco'),
                  subtitle: Text('3 beds, 2 baths, 1200 sqft'),
                ),
                Image.network('https://example.com/house.jpg'),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                ),
                ButtonBar(
                  children: [
                    TextButton(onPressed: () {}, child: Text('More Info')),
                    TextButton(
                      onPressed: () {},
                      child: Text('Contact Agent'),
                      style: TextButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
