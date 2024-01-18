import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 255, 242),
              Color.fromARGB(255, 0, 132, 255),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(color: Colors.red, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
