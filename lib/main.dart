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
  
  int? get someValue => null;

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
              value: true,
              onChanged: (newValue) {},
            ),
            Radio(
              value: 1,
              groupValue: selectedValue,
              onChanged: (newValue) {
                setState(() {
int? myVariable = someValue; // Now myVariable can be null
                });
              },
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

            // Navigation widgets (commented out as they require additional setup)
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SecondScreen()),
            // ),
            // TabBar(
            //   tabs: [
            //     Tab(text: 'Tab 1'),
            //     Tab(text: 'Tab 2'),
            //   ],
            // ),
            // BottomNavigationBar(
            //   items: [
            //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
