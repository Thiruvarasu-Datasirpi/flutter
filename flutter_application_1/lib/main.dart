import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field with Controller'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(labelText: 'Enter text'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String enteredText = _textEditingController.text;
                    // Do something with the entered text
                    print('Entered Text: $enteredText');
                  },
                  child: Text('Get Text'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
