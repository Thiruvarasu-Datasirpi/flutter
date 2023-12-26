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
          title: Text('Flutter Image Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displaying image from the network
              Image.network(
                'Users/datasirpi/Downloads/wallpaperflare.com_wallpaper (1).jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              // Displaying image from the local project
              Image.asset(
                'assets/your-image.jpg',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
