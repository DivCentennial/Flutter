import 'package:flutter/material.dart';

// Entry point of the application.
void main() {
  runApp(MyFirstWidget());  // Run the custom widget.
}

// Custom widget that extends StatelessWidget.
class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp provides app-wide features like app bar, theme, etc.
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('My First App'),  // AppBar widget with title.
        // ),
        body: Container(
          // Apply a gradient background to the container.
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red,
                Colors.blue,
                const Color.fromARGB(255, 255, 0, 255), // Pink color
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World', // Displaying text in the center.
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
