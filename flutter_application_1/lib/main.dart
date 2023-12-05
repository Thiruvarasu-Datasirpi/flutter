import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BasicKeyPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class BasicKeyPage extends StatefulWidget {
  const BasicKeyPage({super.key});

  @override
  State<BasicKeyPage> createState() => _BasicKeyPageState();
}

class _BasicKeyPageState extends State<BasicKeyPage> {
  bool showEmail = true;
  bool showUsername = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdvancedKeyPage()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showEmail)
                const TextField(
                  key: ValueKey(1),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              const SizedBox(height: 50),
              if (showUsername)
                const TextField(
                  key: ValueKey(2),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
            ),
            icon: const Icon(Icons.visibility_off),
            label: const Text('Remove Email'),
            onPressed: () => setState(() => showEmail = false),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
            ),
            icon: const Icon(Icons.visibility_off),
            label: const Text('Remove Username'),
            onPressed: () => setState(() => showUsername = false),
          ),
        ],
      ),
    );
  }
}

class AdvancedKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Key Page'),
      ),
      body: Center(
        child: Text('This is the Advanced Key Page'),
      ),
    );
  }
}
