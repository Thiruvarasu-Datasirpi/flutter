import 'dart:async';
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  final StreamController<int> streamController = StreamController<int>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: StreamBuilder<int>(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text('Received: ${snapshot.data}'),
            );
          } else if (snapshot.hasError) {
            // Handle errors
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          streamController.add(DateTime.now().second);
        },
        child: Icon(Icons.add),
      ),
    );
  }
 
  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}