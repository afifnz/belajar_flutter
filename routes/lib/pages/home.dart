import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routes"),),
      body: const Center(
        child: Text("Home Page", style: TextStyle(fontSize: 50),)
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_right_alt),
        onPressed: (){
          Navigator.of(context).pushNamed('/first');
      },),
    );
  }
}