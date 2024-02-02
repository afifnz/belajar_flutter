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
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.blue.shade400,
            child: Image.asset("images/logo.png"),
            // child: const Image(
            //   fit: BoxFit.contain,
            //   // image: AssetImage("images/logo.png"),
            //   image: NetworkImage("https://afifnz.github.io/polisam/assets/logo.png")
            // ),
          ),
        ),
      ),
    );
  }
}
