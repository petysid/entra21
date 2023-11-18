import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App 1',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child: Text(
            'Hello',
            style: TextStyle(color: Colors.yellow, fontSize: 70),
          ),
        ),
      ),
    );
  }
}
