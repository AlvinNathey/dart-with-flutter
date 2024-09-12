import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple UI App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text widget with a welcome message
              Text(
                'Welcome to My App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
              SizedBox(height: 20), // Add spacing between widgets

              // ElevatedButton widget that prints a message to the console
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Press Me'),
              ),

              SizedBox(height: 20), // Add spacing between widgets

              // Image widget to load an image from the internet
              Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-2e111f9e4b2e94b0de353d3aa1eecae6cf3c28c5c498a4b3e7dbff6e320d1e54.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
