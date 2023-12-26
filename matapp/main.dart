import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Demo',
      home: WidgetDemoScreen(),
    );
  }
}

class WidgetDemoScreen extends StatefulWidget {
  @override
  _WidgetDemoScreenState createState() => _WidgetDemoScreenState();
}

class _WidgetDemoScreenState extends State<WidgetDemoScreen> {
  int selectedValue = 1;
  bool checkboxValue = false;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text widgets
            Text('Hello, Flutter!'),
            Text(
              'Styled text',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                text: 'This is ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' and '),
                  TextSpan(text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
                ],
              ),
            ),

            // Input widgets
            ElevatedButton(
              onPressed: () {},
              child: Text('Click me'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text button'),
            ),
            Checkbox(
              value: checkboxValue,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue = newValue!;
                });
              },
            ),
            Radio(
              value: 1,
              groupValue: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue as int;
                });
              },
            ),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Enter text',
                hintText: 'Type something',
              ),
            ),

            // Layout widgets
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text('Content'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Widget 1'),
                Text('Widget 2'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Widget 1'),
                Text('Widget 2'),
              ],
            ),

            // Image widget

            // Lists
            ListTile(
              leading: Icon(Icons.star),
              title: Text('List item 1'),
              subtitle: Text('Subtitle 1'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('List item 2'),
              subtitle: Text('Subtitle 2'),
              onTap: () {},
            ),

            // Progress indicator
            CircularProgressIndicator(),

            // AlertDialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Alert Dialog'),
                    content: Text('This is an alert dialog.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Show Alert Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
