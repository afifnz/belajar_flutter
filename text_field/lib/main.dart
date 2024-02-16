import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // const MainApp({super.key});
  final TextEditingController myController = TextEditingController();

  String hasil = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                    controller: myController,
                    autocorrect: false,
                    autofocus: false,
                    enableSuggestions: false,
                    onSubmitted: (value) {
                      // hasil = value;
                      setState(() {
                        hasil = value;
                      });
                    },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Input: "),
                    Text(hasil)
                  ],
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
