import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layout Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              height: 50,
              width: 150,
              color: Colors.pink,
            ),
          ],
        )
      ),
    );
  }
}