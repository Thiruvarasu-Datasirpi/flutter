import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        // Check the route name and return the appropriate Widget
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomeScreen());
          case '/details':
            // Extract arguments from settings.arguments if needed
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(builder: (context) => DetailsScreen(args['data']));
          default:
            // If the route is not found, you can return an error page or any fallback
            return MaterialPageRoute(builder: (context) => NotFoundScreen());
        }
      },
      initialRoute: '/',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the '/details' route with some data
            Navigator.pushNamed(
              context,
              '/details',
              arguments: {'data': 'Some data for DetailsScreen'},
            );
          },
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String data;

  DetailsScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text('Details: $data'),
      ),
    );
  }
}

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not Found'),
      ),
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  }
}
