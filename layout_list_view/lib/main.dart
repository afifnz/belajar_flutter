import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> myColor = [
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.blue
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layout List View"),
        ),
        body: ListView.separated(
          itemCount: myColor.length,
          separatorBuilder: (context, index){
            return const Divider(height: 10, color: Colors.amber,);
          },
          itemBuilder: (context, index){
            return Container(
              height: 100,
              width: 100,
              color: myColor[index],              
            );
          },
        ),
      ),
    );
  }
}
