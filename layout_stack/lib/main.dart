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
          title: const Text("Layout Stack"),
        ),
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 350,
              width: 350,
              color: Colors.yellow,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
          ],
        )
      ),
    );
  }
}