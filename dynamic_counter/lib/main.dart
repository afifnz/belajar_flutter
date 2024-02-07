import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter = 1;

  void incrementCounter(){
    setState(() {
      if (counter >= 1) {
        counter++;
      }
    });
  }

  void decrementCounter(){
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(counter.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => {
                    decrementCounter()
                  },
                  child: const Icon(Icons.remove)
                ),
                ElevatedButton(
                  onPressed: () => {
                    incrementCounter()
                  },
                  child: const Icon(Icons.add)
                ),
              ],
            )
          ]
        ),
      ), 
    );
  }
}
