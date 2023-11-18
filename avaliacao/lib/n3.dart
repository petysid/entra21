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
        title: Text('App 3'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 230,
              width: 330,
              color: Colors.cyan,
              child: Icon(
                Icons.coffee,
                size: 150,
                color: Colors.white,
              ),
            ),
            Container(
              height: 230,
              width: 330,
              color: Colors.orange,
              child: Icon(
                Icons.lunch_dining,
                size: 150,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
