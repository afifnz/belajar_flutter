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
          title: const Text("Layout Row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 300,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 50,
              color: Colors.pink,
            ),
          ],
        )
      ),
    );
  }
}